<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="freeplane.py" LOCALIZED_STYLE_REF="styles.topic" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1436572347030">
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<hook NAME="MapStyle" background="#ccffcc">
    <properties show_icon_for_attributes="true" show_note_icons="true" show_notes_in_map="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="900" COLOR="#000000" STYLE="as_parent">
<font NAME="Microsoft YaHei" SIZE="12" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" COLOR="#999999">
<font NAME="Microsoft YaHei" SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#0000a0" STYLE="fork" MAX_WIDTH="300">
<font NAME="Microsoft YaHei UI" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#007878" STYLE="fork" MAX_WIDTH="300">
<font NAME="Microsoft YaHei UI" BOLD="true"/>
</stylenode>
<stylenode TEXT="Comment" COLOR="#c800c8">
<icon BUILTIN="info"/>
</stylenode>
<stylenode TEXT="TODO" COLOR="#c80000">
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="DONE" COLOR="#006400">
<icon BUILTIN="checked"/>
</stylenode>
<stylenode TEXT="WAIT" COLOR="#0000c8">
<icon BUILTIN="hourglass"/>
</stylenode>
<stylenode TEXT="DROP" COLOR="#646464">
<icon BUILTIN="broken-line"/>
</stylenode>
<stylenode TEXT="Green Cloud">
<cloud COLOR="#ccffcc" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Yellow Cloud">
<cloud COLOR="#ffffcc" SHAPE="ARC"/>
</stylenode>
<stylenode TEXT="Blue Cloud">
<cloud COLOR="#ccffff" SHAPE="ARC"/>
</stylenode>
<stylenode TEXT="Red Cloud">
<cloud COLOR="#ffccff" SHAPE="ARC"/>
</stylenode>
<stylenode TEXT="Code" COLOR="#000000" BACKGROUND_COLOR="#e6e6e6">
<font NAME="Monospaced"/>
</stylenode>
<stylenode TEXT="TODO+Code" COLOR="#c80000">
<icon BUILTIN="unchecked"/>
<font NAME="Monospaced"/>
</stylenode>
<stylenode TEXT="DONE+Code" COLOR="#006400">
<icon BUILTIN="checked"/>
<font NAME="Monospaced"/>
</stylenode>
<stylenode TEXT="Article" COLOR="#000000" BACKGROUND_COLOR="#ffffff" STYLE="fork" MAX_WIDTH="300">
<font NAME="Microsoft YaHei UI" BOLD="true"/>
</stylenode>
<stylenode TEXT="Section" COLOR="#000000" BACKGROUND_COLOR="#ffdcdc" STYLE="fork" NUMBERED="true" MAX_WIDTH="300">
<font NAME="Microsoft YaHei UI" BOLD="true" ITALIC="false"/>
</stylenode>
<stylenode TEXT="Subsection" COLOR="#000000" BACKGROUND_COLOR="#ffdcdc" STYLE="fork" NUMBERED="true" MAX_WIDTH="300">
<font NAME="Microsoft YaHei UI" BOLD="true" ITALIC="true"/>
</stylenode>
<stylenode TEXT="Subsubsection" COLOR="#000000" BACKGROUND_COLOR="#dcdcff" STYLE="fork" NUMBERED="true" MAX_WIDTH="300">
<font NAME="Microsoft YaHei UI" BOLD="true" ITALIC="false"/>
</stylenode>
<stylenode TEXT="Paragraph" COLOR="#000000" BACKGROUND_COLOR="#dcdcff" STYLE="fork" NUMBERED="true" MAX_WIDTH="300">
<font NAME="Microsoft YaHei UI" BOLD="true" ITALIC="true"/>
</stylenode>
<stylenode TEXT="Subparagraph" COLOR="#000000" STYLE="fork" NUMBERED="true" MAX_WIDTH="300">
<font NAME="Microsoft YaHei UI" BOLD="true" ITALIC="false"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4">
<font SIZE="12"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<edge COLOR="#000000"/>
<node TEXT="To test blog mode" POSITION="right" ID="ID_908444331" CREATED="1436572305258" MODIFIED="1436590446503">
<cloud COLOR="#ffffcc" SHAPE="ROUND_RECT"/>
<node TEXT="Sample Markdown from freeplane.py.mm" LOCALIZED_STYLE_REF="styles.topic" ID="ID_1827249689" CREATED="1436417925284" MODIFIED="1436677869140">
<icon BUILTIN="folder"/>
<edge COLOR="#00007c"/>
<node TEXT="Introduction to freeplane.py" STYLE_REF="Article" ID="ID_1771541919" CREATED="1436586715894" MODIFIED="1436686733773"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Artical title
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="created" VALUE="2015-07-10"/>
<attribute NAME="modified" VALUE="2015-07-12"/>
<node TEXT="Blog mode" STYLE_REF="Section" ID="ID_1991143030" CREATED="1436586827953" MODIFIED="1436675633629">
<node TEXT="Purpose" STYLE_REF="Subsection" ID="ID_1353725644" CREATED="1436587469874" MODIFIED="1436675640574">
<node TEXT="I&apos;m looking for a Markdown writer for some time. And before that I&apos;ve been using Mindmap tool (Freemind/Freeplane) to write my presentations and papers for 3 years, because I find Mindmapping tool very good to write outlines and track progress. Although at last I have to copy and paste the text from Mindmap into Word, and do the format. Obviously &quot;why don&apos;t put them together&quot;." ID="ID_356396670" CREATED="1436590818769" MODIFIED="1436591172168"/>
<node TEXT="Although Freeplane support HTML very well, still I want to write plain text Markdown. It gave me much better flexibility afterwards. I can use Pandoc to convert Markdown into Word doc, Presentations. And I can use Pelican to generate static personal website." ID="ID_714407761" CREATED="1436591178073" MODIFIED="1436591281138"/>
<node TEXT="This script is written in Python, which is the only scripting language I know of except for Tcl." ID="ID_1937759786" CREATED="1436591410317" MODIFIED="1436591484367"/>
</node>
<node TEXT="How-to" STYLE_REF="Subsection" ID="ID_1657236352" CREATED="1436587988764" MODIFIED="1436675640572">
<node TEXT="Plain text to Markdown" STYLE_REF="Subsubsection" ID="ID_945468316" CREATED="1436588777411" MODIFIED="1436675645838">
<node TEXT="Write Markdown in Freeplane node core and note. The script will remove HTML format and write plain text to Markdown files. So what you wrote in Freeplane will be what you got in Markdown file, as plain text. For example, if you want to get a list, please write these in Freeplane node core or note." ID="ID_868003977" CREATED="1436588985216" MODIFIED="1436676280806"/>
<node TEXT="1. First&#xa;2. Second&#xa;    - This&#xa;    - That" STYLE_REF="Code" ID="ID_1831109965" CREATED="1436676271928" MODIFIED="1436676286223"/>
<node TEXT="And you will get:&#xa;1. First&#xa;2. Second&#xa;    - This&#xa;    - That" ID="ID_1069713720" CREATED="1436676281685" MODIFIED="1436676282455"/>
</node>
<node TEXT="Format Style in Freeplane" STYLE_REF="Subsubsection" ID="ID_1712273682" CREATED="1436588828146" MODIFIED="1436675645872">
<node TEXT="Take advantage of Freeplane&apos;s &quot;format style&quot; to apply different meaning to nodes. And these styles are defined in special node &quot;blog mode setting&quot;. So you can customize the &quot;format style&quot; for pre-defined meaning. I got this idea from Freemind|GTD plugin. Be aware of that, the settings are case insensitive." ID="ID_1960384134" CREATED="1436588124874" MODIFIED="1436589968543"/>
<node TEXT="Articles and directories" STYLE_REF="Paragraph" ID="ID_660195764" CREATED="1436589645813" MODIFIED="1436675719882">
<node TEXT="When the script run into a node matches &quot;article&quot; style, a Markdown file will be created, and its all sub nodes will be recognized as this article&apos;s content. This special node&apos;s attribute will be treated as meta-data of the Markdown file." ID="ID_1766805178" CREATED="1436589664145" MODIFIED="1436596226407"/>
<node TEXT="And the attributes of the &quot;article&quot; node in blog mode setting will be treated as default value for every generated Markdown files. Necessary meta-data would be &quot;authors&quot;, &quot;tag&quot;, &quot;date&quot;, &quot;modified&quot;. Other meta-data, such as &quot;slug&quot;, &quot;title&quot;, will be generated automatically." ID="ID_1960497383" CREATED="1436596228630" MODIFIED="1436597108589"/>
<node TEXT="If the &quot;article&quot; node has a link itself, then this link will be treated as the target directory that the Markdown file should be put in. If the link is a file other than a directory, the generated Markdown file will be put in the same directory with it." STYLE_REF="DROP" ID="ID_376210840" CREATED="1436593276878" MODIFIED="1436673345202"/>
<node TEXT="Articles are grouped by directories defined as &quot;Directory&quot; keyword in &quot;blog mode settings&quot;. The script expects &quot;article&quot; nodes to be children nodes of &quot;directory&quot; node. And the name of the directory will be treated as default value of &quot;Category&quot; of its children article." ID="ID_1026871849" CREATED="1436672993963" MODIFIED="1436673190140"/>
<node TEXT="By default, directory will be created at the same directory of the mindmap file. But assign link to &quot;directory&quot; node will change this default behavior, and put the directory to where the link is pointing at." STYLE_REF="DROP" ID="ID_1786902117" CREATED="1436673259174" MODIFIED="1436673344101"/>
</node>
<node TEXT="Levels of chapter hierarchy" STYLE_REF="Paragraph" ID="ID_1255316565" CREATED="1436589099115" MODIFIED="1436675708564">
<node TEXT="There are 5 levels of chapter hierarchy, following LaTeX, could be defined. Section, Subsection, Subsubsection, Paragraph, Subparagraph." ID="ID_1498683557" CREATED="1436589120976" MODIFIED="1436675772984"/>
</node>
<node TEXT="Special nodes" STYLE_REF="Paragraph" ID="ID_1592315563" CREATED="1436589862370" MODIFIED="1436675649545">
<node TEXT="- link" ID="ID_1393751100" CREATED="1436592111053" MODIFIED="1436592114143">
<node TEXT="A node that has a link and this core text matches the target&apos;s file name most likely pointing to a image file that need to be inserted. The script will change the relative file path according to the result Markdown file&apos;s location. So to insert a image, just copy it in File Explorer and paste it into Freeplane." ID="ID_1383768818" CREATED="1436592115513" MODIFIED="1436642478501"/>
</node>
<node TEXT="- code" ID="ID_1821675306" CREATED="1436589975410" MODIFIED="1436589978070">
<node TEXT="A node marked as &quot;code&quot; style will be generated as a block of code." ID="ID_995576516" CREATED="1436590051033" MODIFIED="1436590085252"/>
</node>
<node TEXT="- comment" ID="ID_40599904" CREATED="1436589972136" MODIFIED="1436589975182">
<node TEXT="A node marked as &quot;comment&quot; style will be ignored, as well as all of its children nodes. Also node details will be also treated as comment and ignored. Comment could be useful for keeping writing notes or temporarily block some part of your article." ID="ID_398187012" CREATED="1436589988765" MODIFIED="1436590691075"/>
</node>
<node TEXT="- skip" ID="ID_1545783134" CREATED="1436590516853" MODIFIED="1436590518866">
<node TEXT="A node marked as &quot;skip&quot; style will be skipped, but its children nodes will be kept. This is useful for define writing plan." ID="ID_413529547" CREATED="1436590525526" MODIFIED="1436590649649"/>
</node>
<node TEXT="** NOTICE ** each types of special nodes could be defined multiple times for flexibility." ID="ID_184890099" CREATED="1436590702725" MODIFIED="1436590745894"/>
</node>
</node>
</node>
<node TEXT="Example" STYLE_REF="Subsection" ID="ID_1939569914" CREATED="1436592659410" MODIFIED="1436675640567">
<node TEXT="This article is generated by freeplane.py/blog-mode. Its Mindmap actually looks like this:" ID="ID_1408032889" CREATED="1436592698961" MODIFIED="1436592739106"/>
<node TEXT="capture of freeplane.py.jpg" ID="ID_1822863823" CREATED="1436681224644" MODIFIED="1436681224645" LINK="images/capture%20of%20freeplane.py.jpg"/>
<node TEXT="The source Markdown file is here:" ID="ID_1779797612" CREATED="1436681209111" MODIFIED="1436681216838"/>
<node TEXT="introduction-to-freeplane.py.md" ID="ID_1641539295" CREATED="1436681219131" MODIFIED="1436681219132" LINK="files/introduction-to-freeplane.py.md"/>
</node>
</node>
<node TEXT="Resume mode" STYLE_REF="TODO" ID="ID_1496235424" CREATED="1436591503552" MODIFIED="1436682655884">
<node TEXT="Purpose" STYLE_REF="Subtitle" ID="ID_1786744292" CREATED="1436593974870" MODIFIED="1436593978544"/>
<node TEXT="How-to" STYLE_REF="Subtitle" ID="ID_625246739" CREATED="1436593979688" MODIFIED="1436593983567"/>
</node>
<node TEXT="GTD mode" STYLE_REF="TODO" ID="ID_909057127" CREATED="1436586859521" MODIFIED="1436682657207"/>
</node>
</node>
</node>
<node TEXT="To test GTD mode" POSITION="right" ID="ID_1565657842" CREATED="1436572322435" MODIFIED="1436596524878">
<cloud COLOR="#ccffcc" SHAPE="ROUND_RECT"/>
<node TEXT="freeplane.py" LOCALIZED_STYLE_REF="styles.topic" ID="ID_346168370" CREATED="1436570435648" MODIFIED="1436594994590"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Project name
    </p>
    <p>
      Attribute here are default value for this project
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="who" VALUE="self"/>
<attribute NAME="where" VALUE="home"/>
<attribute NAME="when" VALUE="now"/>
<node TEXT="freeplane parser: parse_mindmap()&#xa;&lt; mm_fpath&#xa;&gt; mindmap_t" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_1047289659" CREATED="1436586906269" MODIFIED="1436642389737"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      sub-project name
    </p>
    <p>
      attribute here are default value for this sub-project. will replace the value from parent project
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="when" VALUE="now"/>
<cloud COLOR="#ccffcc" SHAPE="ARC"/>
<node TEXT="study xml.eTree.ElementTree" STYLE_REF="DONE" ID="ID_1330695126" CREATED="1436587035419" MODIFIED="1436594487060"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      task
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="parse_freeplane(): parse node tree with core/style/icon/link/details/note" STYLE_REF="DONE" ID="ID_900687163" CREATED="1436592978633" MODIFIED="1436597575682">
<node TEXT="1st level: mindmap_t" ID="ID_1878828501" CREATED="1436594415335" MODIFIED="1436594436656"/>
<node TEXT="2nd level: node_t" ID="ID_678866669" CREATED="1436594426617" MODIFIED="1436594431874"/>
</node>
<node TEXT="make node_t iterable" STYLE_REF="DONE" ID="ID_1117294520" CREATED="1436594445797" MODIFIED="1436642122547">
<node TEXT=".__iter__()" STYLE_REF="DONE+Code" ID="ID_799841981" CREATED="1436594580079" MODIFIED="1436595915215"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      sub-task
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT=".find()" STYLE_REF="DROP" ID="ID_694683060" CREATED="1436594630474" MODIFIED="1436597285976">
<hook NAME="FirstGroupNode"/>
<node TEXT="could be simply implemented by &quot;next()&quot;" STYLE_REF="Comment" ID="ID_671058541" CREATED="1436597298149" MODIFIED="1436597343044"/>
</node>
<node TEXT=".findall()" STYLE_REF="DROP" ID="ID_1655579904" CREATED="1436594876362" MODIFIED="1436597286696">
<node TEXT="could be simply implemented by &quot;filter()&quot;" STYLE_REF="Comment" ID="ID_268414198" CREATED="1436597319562" MODIFIED="1436597345945"/>
</node>
<node TEXT="argument: core=&apos;&apos;, style_ref=&apos;&apos;, attribute=list(), has_link=None, has_details=None, has_note=None, has_sub=None, level=-1" ID="ID_1271128399" CREATED="1436594910955" MODIFIED="1436596873450">
<hook NAME="SummaryNode"/>
</node>
</node>
</node>
<node TEXT="blog mode: mindmap_to_blog()&#xa;&lt; mindmap_t&#xa;&gt;&gt; markdown files in dirs" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_975392764" CREATED="1436570446181" MODIFIED="1436642403566"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      turn freeplane into blog writer. generate Markdown files
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="when" VALUE="now"/>
<cloud COLOR="#ccffff" SHAPE="ARC"/>
<node TEXT="parse blog mode setting" STYLE_REF="DONE" ID="ID_1873703618" CREATED="1436593468215" MODIFIED="1436678744727"/>
<node TEXT="new variables: node_t.type = &apos;&apos;" STYLE_REF="DONE" ID="ID_1532288750" CREATED="1436595994948" MODIFIED="1436678725548"/>
<node TEXT="write markdown" STYLE_REF="DONE" ID="ID_1696615789" CREATED="1436595497349" MODIFIED="1436678750609">
<node TEXT="meta-data" STYLE_REF="Comment" ID="ID_325670540" CREATED="1436650013187" MODIFIED="1436650021934"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Title: My super title
    </p>
    <p>
      Date: 2010-12-03 10:20
    </p>
    <p>
      Modified: 2010-12-05 19:30
    </p>
    <p>
      Category: Python
    </p>
    <p>
      Tags: pelican, publishing
    </p>
    <p>
      Slug: my-super-post
    </p>
    <p>
      Authors: Alexis Metaireau, Conan Doyle
    </p>
    <p>
      Summary: Short version for index and feeds
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="support insert image with link" STYLE_REF="DONE" ID="ID_74497567" CREATED="1436678760468" MODIFIED="1436726861103"/>
<node TEXT="support redirect output directory: both by default setting in &quot;directory setting&quot; node link or &quot;directory&quot; node link" STYLE_REF="TODO" ID="ID_1814770768" CREATED="1436726900443" MODIFIED="1436726976496"/>
<node TEXT="move images and files that inserted by link automatically to output directory" STYLE_REF="TODO" ID="ID_878879368" CREATED="1436726861480" MODIFIED="1436726896851"/>
</node>
<node TEXT="resume mode" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_716565326" CREATED="1436591906273" MODIFIED="1436596610240" TEXT_SHORTENED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      turn freeplane into a resume write. generate Markdown and Tex.
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="when" VALUE="next"/>
<cloud COLOR="#ccffcc" SHAPE="ARC"/>
</node>
<node TEXT="GTD mode" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_53609642" CREATED="1436586902014" MODIFIED="1436596611511" TEXT_SHORTENED="true"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Whill project management with Freeplane, search and find out on-going tasks with its project/priority/owner/place
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="when" VALUE="someday"/>
<cloud COLOR="#ccffcc" SHAPE="ARC"/>
</node>
</node>
</node>
<node TEXT="GTD mode settings" POSITION="left" ID="ID_1397121307" CREATED="1436250874643" MODIFIED="1436643283878">
<edge COLOR="#999999"/>
<node TEXT="Project" LOCALIZED_STYLE_REF="styles.topic" ID="ID_503006573" CREATED="1436587438908" MODIFIED="1436587449556">
<node TEXT="Sub-project" LOCALIZED_STYLE_REF="styles.subtopic" ID="ID_568956137" CREATED="1436587445428" MODIFIED="1436587449180"/>
</node>
<node TEXT="status" ID="ID_78210152" CREATED="1436251498801" MODIFIED="1436572394695"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      GTD items
    </p>
  </body>
</html>
</richcontent>
<node TEXT="TODO" STYLE_REF="TODO" ID="ID_485473223" CREATED="1436251533884" MODIFIED="1436251539476"/>
<node TEXT="DONE" STYLE_REF="DONE" ID="ID_728717204" CREATED="1436251540155" MODIFIED="1436251542267"/>
<node TEXT="WAIT" STYLE_REF="WAIT" ID="ID_1379082807" CREATED="1436251542759" MODIFIED="1436251544608"/>
<node TEXT="DROP" STYLE_REF="DROP" ID="ID_81673913" CREATED="1436251442229" MODIFIED="1436251451183"/>
</node>
<node TEXT="priority" ID="ID_1483321608" CREATED="1436587361407" MODIFIED="1436587363789">
<node TEXT="now" ID="ID_168714721" CREATED="1436587364591" MODIFIED="1436587366676"/>
<node TEXT="next" ID="ID_83446210" CREATED="1436587367031" MODIFIED="1436587370021"/>
<node TEXT="later" ID="ID_435873962" CREATED="1436595062333" MODIFIED="1436595064018"/>
<node TEXT="someday" ID="ID_995505344" CREATED="1436587370408" MODIFIED="1436587375013"/>
</node>
<node TEXT="default" ID="ID_1082264140" CREATED="1436587271308" MODIFIED="1436587275209">
<node TEXT="@work" ID="ID_1958746270" CREATED="1436587286602" MODIFIED="1436587332644"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      where
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="[self]" ID="ID_1913744369" CREATED="1436587294271" MODIFIED="1436587328761"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      who
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="{none}" ID="ID_1331691242" CREATED="1436587303545" MODIFIED="1436587349798"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      when
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="blog mode settings" POSITION="left" ID="ID_7871025" CREATED="1436571754888" MODIFIED="1436643278661">
<icon BUILTIN="executable"/>
<node TEXT="Directory" LOCALIZED_STYLE_REF="styles.topic" ID="ID_396904766" CREATED="1436412821176" MODIFIED="1436726346145">
<icon BUILTIN="folder"/>
<attribute NAME="output" VALUE="../content/"/>
<node TEXT="Article" STYLE_REF="Article" ID="ID_1039435967" CREATED="1436250888034" MODIFIED="1436675615637">
<attribute NAME="Authors" VALUE="J.Wang"/>
<attribute NAME="Tag" VALUE="None"/>
<node TEXT="Section" STYLE_REF="Section" ID="ID_1953347430" CREATED="1436250992866" MODIFIED="1436675616366">
<node TEXT="Subsection" STYLE_REF="Subsection" ID="ID_1179473368" CREATED="1436589521413" MODIFIED="1436675618085">
<node TEXT="Subsubsection" STYLE_REF="Subsubsection" ID="ID_1832908614" CREATED="1436675273271" MODIFIED="1436675619238">
<node TEXT="Paragraph" STYLE_REF="Paragraph" ID="ID_1642909379" CREATED="1436675278526" MODIFIED="1436675621390">
<node TEXT="Subparagraph" STYLE_REF="Subparagraph" ID="ID_40087402" CREATED="1436675284615" MODIFIED="1436675622943"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Special nodes" ID="ID_1949359" CREATED="1436589902330" MODIFIED="1436589907138">
<node TEXT="code" STYLE_REF="Code" ID="ID_363760473" CREATED="1436251394968" MODIFIED="1436251431635"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      block code
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="comment" STYLE_REF="Comment" ID="ID_1287714803" CREATED="1436251140831" MODIFIED="1436589985516"/>
<node TEXT="comment" STYLE_REF="DROP" ID="ID_1407625897" CREATED="1436590768957" MODIFIED="1436595127245"/>
<node TEXT="comment" STYLE_REF="TODO" ID="ID_1285513876" CREATED="1436590508485" MODIFIED="1436680673362"/>
<node TEXT="skip" STYLE_REF="DONE" ID="ID_346511632" CREATED="1436590754697" MODIFIED="1436590761453"/>
</node>
<node TEXT="Link file types" ID="ID_942299208" CREATED="1436680682800" MODIFIED="1436726296087">
<attribute NAME="image" VALUE="*.jpg *.jpeg *.gif *.png *.bmp"/>
<attribute NAME="files" VALUE="*.*"/>
</node>
</node>
<node TEXT="&#x6d4b;&#x8bd5;&#x4e2d;&#x6587;" STYLE_REF="Comment" POSITION="right" ID="ID_140358903" CREATED="1437291820360" MODIFIED="1437291835210">
<node TEXT="~!@#$%^&amp;*()_+-=`{}|[]\:&quot;;&apos;&lt;&gt;?,./" ID="ID_1023963711" CREATED="1437291850918" MODIFIED="1437291870181"/>
</node>
</node>
</map>
