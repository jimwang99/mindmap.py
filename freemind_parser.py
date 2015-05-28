#!/usr/bin/python2.7

import re
import os.path
import fnmatch

is_for_tex = False
is_for_md = False

class mm_file_t():
    def __init__(self, mm_fpath):
        '>> self.root = mm_node_t()'# {{{
        assert os.path.isfile(mm_fpath), 'Freemind file (%s) is not found' % mm_fpath
        self.fpath = mm_fpath
        self.ls_all_line = list()

        f = open(self.fpath, 'r')
        first_node_line_num = 0
        for (i, raw) in enumerate(f):
            line = mm_line_t(raw, i+1)
            self.ls_all_line.append(line)
            if (first_node_line_num == 0):
                if (line.type == 'sline_node') or (line.type == 'mline_node_begin'):
                    first_node_line_num = line.num
        f.close()

        # parse syntax
        self.root = mm_node_t(self.ls_all_line, first_node_line_num)
        # }}}


class mm_line_t():
    def __init__(self, raw, line_num):
        """ parse syntax of an mm file by lines {{{
        self.raw = raw string
        self.num = line number
        self.string = content string from raw
        self.type = syntax type: map_begin|map_end|sline_node|mline_node_begin|mline_node_end|icon|font
            sline_node: node that stays in a single line
            mline_node_begin/end: node that spread out in mutilple lines
        """
        self.raw = raw
        self.num = line_num

        string = raw.strip()

        if (len(string) == 0):
            self.is_empty = True
            self.type = 'empty'
        else:
            self.is_empty = False

        if (string.startswith('<!--')):
            self.is_comment = True
            self.type = 'comment'
            assert string.endswith('-->'), self.raw
        else:
            self.is_comment = False

        if (self.is_empty or self.is_comment):
            return

        # parse line type
        self.type = ''
        if string.startswith('<node '):
            if string.endswith('/>'):
                self.type = 'sline_node'
            else:
                self.type = 'mline_node_begin'
        elif string == '</node>':
            self.type = 'mline_node_end'
        elif string.startswith('<icon '):
            self.type = 'icon'
        elif string.startswith('<font '):
            self.type = 'font'
        elif string.startswith('<map '):
            self.type = 'map_begin'
        elif string == '</map>':
            self.type = 'map_end'
        else:
            print 'Warning: line %d is not recognized (%s)' % (self.num, self.raw.strip())
        # }}}

    def parse_field(self):
        'parse the field section, such as id/color/text >> dt_field[name] = value' # {{{
        if (hasattr(self, 'dt_field')):
            return self.dt_field

        string = ''
        is_value = False
        for c in self.raw.strip().strip('<').strip('>').strip('/'):
            if (c == '"'):
                if not is_value:
                    is_value = True
                else:
                    is_value = False
            elif (not is_value) and (c == ' '):
                c = '____'
            string += c


        dt_field = dict()
        ls = string.split('____')
        for s in ls[1:]:
            name = s.split('=')[0]
            value = s.split('=')[1].strip('"')
            assert name not in dt_field.keys()
            dt_field[name] = value

        self.dt_field = dt_field
        return dt_field
        # }}}


class mm_node_t():
    def __init__(self, ls_all_line, begin_line_num):
        # {{{
        self.ls_all_line = ls_all_line
        self.begin_line_num = begin_line_num
        self.title_line = ls_all_line[begin_line_num-1]
        self.end_line_num = 0
        self.ls_line = list()

        # line field
        self.id = ''
        self.color = ''
        self.text = ''

        # line's icont and font
        self.ls_icon = list()
        self.font = None

        # a list of its sub nodes
        self.ls_sub = list()

        # find end line of current node, and create sub node recursively
        if (self.title_line.type == 'sline_node'):
            self.end_line_num = begin_line_num
            self.ls_line.append(self.title_line)
        elif (self.title_line.type == 'mline_node_begin'):
            level = 1
            for line in ls_all_line[begin_line_num:]:
                if (level == 1):
                    if (line.type == 'icon'):
                        icon = icon_t(line)
                        self.ls_icon.append(icon)
                    elif (line.type == 'font'):
                        font = font_t(line)
                        self.font = font
                    elif (line.type == 'sline_node') or (line.type == 'mline_node_begin'):
                        # sub node
                        node = mm_node_t(ls_all_line, line.num)
                        self.ls_sub.append(node)
                if (line.type == 'mline_node_begin'):
                    level += 1
                elif (line.type == 'mline_node_end'):
                    level -= 1
                    if (level == 0):
                        self.end_line_num = line.num
                        break
            self.ls_line = ls_all_line[self.begin_line_num-1:self.end_line_num]

        # parse field
        dt_field = self.title_line.parse_field()
        try:
            self.id = dt_field['ID']
        except KeyError:
            self.id = ''
        try:
            self.color = dt_field['COLOR']
        except KeyError:
            self.color = ''
        self.text = dt_field['TEXT']

        # parse icon >> self.status
        try:
            self.status = self.ls_icon[0].type
        except IndexError:
            self.status = ''

        # }}}

    def find_sub_by_text(self, target_text, do_ignore_case=True, is_multiple=False):
        'find sub mm_node_t accroding to its text ' # {{{
        if (do_ignore_case):
            target_text = target_text.lower()

        ls = list()
        for node in self.ls_sub:
            if (do_ignore_case):
                text = node.text.lower()
            if fnmatch.fnmatch(text, target_text):
                if is_multiple:
                    ls.append(node)
                else:
                    return node
        if (len(ls) == 0):
            return None
        return ls
        # }}}

    def to_print(self):
        'convert to printable string' # {{{
        text = self.text
        text = text.replace(r'%', r'\%')
        text = text.replace(r'&apos;', r"'")
        text = text.replace(r'&quot;', r'"')
        text = text.replace(r'&amp;', r'\&')
        return text
        # }}}

    def to_tex(self):
        'convert to compatible with TeX' # {{{
        text = self.text
        text = text.replace(r'%', r'\%')
        text = re.sub(r'\*\*(.+?)\*\*', r'{\\bf \1}', text)
        text = text.replace(r'&apos;', r"'")
        text = text.replace(r'&quot;', r'"')
        text = text.replace(r'&amp;', r'\&')
        return text
        # }}}

    def to_md(self):
        'convert to compatible with MD' # TODO
        pass

class icon_t():
    def __init__(self, line):
        """ different icons has different meaning in my GTD system {{{
        bookmark =  todo
        button_ok = done
        hourglass = wait
        button_cancel = drop
        """
        self.line = line
        self.builtin = self.line.parse_field()['BUILTIN']

        if (self.builtin == 'bookmark'):
            self.type = 'todo'
        elif (self.builtin == 'button_ok'):
            self.type = 'done'
        elif (self.builtin == 'hourglass'):
            self.type = 'wait'
        elif (self.builtin == 'button_cancel'):
            self.type = 'drop'
        else:
            self.type = ''
        # }}}

class font_t():
    def __init__(self, line):
        '>> font.name/is_bold/size' # {{{
        self.line = line

        field = self.line.parse_field()
        try:
            self.bold = field['BOLD']
            self.is_bold = True
        except KeyError:
            self.bold = ''
            self.is_bold = False
        self.name = field['NAME']
        try:
            self.size = field['SIZE']
        except KeyError:
            self.size = ''
        # }}}

if __name__ == '__main__':
    mm = mm_file_t('./test/freemind_parser_test_mindmap.mm')
    print 'DONE'
