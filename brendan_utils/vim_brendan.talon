neo vim: insert("nvim .\n")
open neo vim: insert("nvim ")

(escape | stake | steak | scape): key(escape)

push up:
    key(escape)
    sleep(25ms)
    key(space)
    key(space)

top:
    key(escape)
    sleep(25ms)
    insert("gg")

bottom:
    key(escape)
    sleep(25ms)
    key(G)

upwards:
    key(k)
    key(0)
downwards:
    key(j)
    key(0)

print file:
    key(escape)
    sleep(25ms)
    insert(" pfp")

godef:
    key(escape)
    sleep(25ms)
    insert("gd")
declaration:
    key(escape)
    sleep(25ms)
    insert(" gd")
vertical split:
    key(escape)
    sleep(25ms)
    insert(" vs")
horizontal split:
    key(escape)
    sleep(25ms)
    insert(" hs")

header: key(escape space h h)

backup header:
    key(escape)
    sleep(25ms)
    insert("-")
    sleep(300ms)
    insert("*")
    sleep(10ms)
    key(enter)

(diffmaster | diff master):
    key(escape)
    sleep(25ms)
    insert(":DiffviewOpen master..HEAD")
    key(enter)

(see | sea) do:
    key(escape)
    insert(":cdo ")

above [<number>]: user.above(number or -1)
(newline | below) [<number>]: user.below(number or -1)
duplicate: key(escape y y p)

left: key(left)
right: key(right)
(north | northern | ascend) [<number>]: user.north(number or 1)
(south | southern | descend) [<number>]: user.south(number or 1)

condition consume <number>: user.condition_consume(number)

select next: key(ctrl-n)
select preev: key(ctrl-p)

(climb | clime):
    key(escape)
    key(I)
fall:
    key(escape)
    insert("A")
(shunt | chant):
    key(escape)
    insert("A ")
squeeze:
    key(escape)
    insert("$i")

slide <user.any_alphanumeric_key>: user.slide(any_alphanumeric_key, "f")
sloop <user.any_alphanumeric_key>: user.slide(any_alphanumeric_key, "F")
leap <user.word>: user.leap(word)

(enter | slap): key(enter)

spike:
    key(escape)
    key(o)

spoke:
    key(escape)
    key(o)
    key(escape)
    key(o)

sweet:
    key(escape)
    key(o)
    key(escape)
    key(o)
    key(escape)
    key(o)
    key(escape)
    key(k)
    key(0)
    key(i)

record <user.any_alphanumeric_key>: user.macro_action("q", any_alphanumeric_key)
play <user.any_alphanumeric_key>: user.macro_action("@", any_alphanumeric_key)
market <user.letter>: user.market(letter)
piggy <user.letter>: user.piggy(letter)
market$: user.market("z")
piggy$: user.piggy("z")

goplace <user.text>:
    key(escape)
    insert("/{text}\\c\n")
    insert("ciw")
replace <user.text>:
    key(escape)
    insert("?{text}\\c\n")
    insert("ciw")
search <user.word>:
    key(escape)
    insert("/{word}\\c\n")
birch <user.word>:
    key(escape)
    insert("?{word}\\c\n")

undo: key(escape u)
redo: key(escape ctrl-r)

forward: key(escape ctrl-f)
backward: key(escape ctrl-b)

substitute:
    key(escape)
    sleep(25ms)
    insert(" sb")
    sleep(25ms)
    key(left)
    sleep(25ms)
    key(ctrl-f)
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(h c i w)

open (file | buffer | buf | buff) <user.text>:
    user.buffer(text, true, true)
(buffer | buf) <user.text>:
    user.buffer(text, false, true)
find (file | buffer | buf | buff) <user.text>:
    user.buffer(text, true, false)
grep:
    key(escape)
    insert(" gf")
    sleep(40ms)
local grep:
    key(escape)
    insert(" fs")
    sleep(40ms)
this word:
    key(escape)
    key(y i w)
    sleep(50ms)
    insert(" gf")
    sleep(100ms)
    key(ctrl-r)
    sleep(25ms)
    insert('"')
local this word:
    key(escape)
    key(y i w)
    sleep(50ms)
    insert(" fs")
    sleep(100ms)
    key(ctrl-r)
    sleep(25ms)
    insert('"')

fugitive:
    key(escape)
    insert(" gg")
(disk | disc | tisk | vim write | editor write | ritter | writter):
    sleep(25ms)
    key(escape)
    sleep(25ms)
    insert(":w")
    key(enter)
(vim quit | editor quit):
    key(escape)
    insert(":q")
    key(enter)
(vim force quit | editor force quit):
    key(escape)
    insert(":q!")
    key(enter)
finished:
    key(escape)
    sleep(25ms)
    insert(":x")
    key(enter)

first arg:
    key(escape)
    insert("/(\n/[a-z,A-Z]\n")
second arg:
    key(escape)
    insert("/(\n/,\nw")
third arg:
    key(escape)
    insert("/(\n/,\nw/,\nw")
change first arg:
    key(escape)
    insert("/(\n/[a-z,A-Z]\ncia")
change second arg:
    key(escape)
    insert("/(\n/,\nwcia")
change third arg:
    key(escape)
    insert("/(\n/,\nw/,\nwcia")

new (arg | org | argument | orgument | param | parameter):
    key(escape)
    insert("/)\ni, ")

go to func:
    insert("/;\n?)\n%?[a-z,A-Z]\nb")

drive <user.any_alphanumeric_key>: user.forward_insert(any_alphanumeric_key)
reverse <user.any_alphanumeric_key>: user.backward_insert(any_alphanumeric_key)
push:
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(c t)
push ink:
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(c f)
(pop | pup):
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(c T)
(pop | pup) ink:
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(c F)
head:
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(b i)
tail:
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(e a)
big head: key(escape shift-b i)
big tail: key(escape shift-e a)
change word:
    key(escape)
    sleep(75ms)
    key(c i w)
change big word:
    key(escape)
    sleep(75ms)
    key(c i shift-w)
change: key(escape c i)
change around: key(escape c a)
change line:
    key(escape)
    sleep(75ms)
    key(c)
    key(c)
(yoink | lift) word: key(escape y i w)
(yoink | lift) big word: key(escape y i shift-w)
(yoink | lift): key(escape y i)
(yoink | lift) around: key(escape y a)
(yoink | lift) line:
    key(escape)
    key(y)
    key(y)
(yoink | lift) into <user.letter>:
    insert('"{letter}y')
(yoink | lift) word into <user.letter>:
    key(escape)
    sleep(25ms)
    insert('"{letter}yiw')
pasta <user.letter>:
    key(escape)
    sleep(25ms)
    insert('"{letter}p')
delete word: key(escape d i w)
delete big word: key(escape d i shift-w)
delete: key(escape d i)
delete around: key(escape d a)
delete line: key(escape d d)
select word: key(escape v i w)
select big word: key(escape v i shift-w)
select: key(escape v i)
select around: key(escape v a)
select line: key(escape V)

safe (punch | paste):
    key(escape)
    sleep(25ms)
    key(v i w)
    sleep(25ms)
    key(space p)

demi:
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(A)
    key(;)
    sleep(25ms)
    key(escape)
    sleep(25ms)
    insert(":w")
    key(enter)
semi:
    sleep(25ms)
    key(escape)
    sleep(25ms)
    key(A)
    key(;)
    sleep(25ms)
    key(escape)
    sleep(25ms)
    insert(":w")
    key(enter)
    key(o)

fixup:
    key(escape)
    key(= =)
selection fixup:
    key(= =)

quickfix:
    key(escape)
    sleep(25ms)
    insert(" co")

(quickfix close | quick close | close fix | closefix):
    key(escape)
    sleep(25ms)
    insert(":cclose")
    key(enter)

temple:
    insert("<>")
    key(escape)
    key(i)

populate:
    key(escape)
    insert("/}")
    key(enter)
    key(i)
    key(enter)

grasp:
    key(escape)
    insert("/  ")
    key(enter)
    key(a)

(apply format | apply formatter | formatter):
    key(escape)
    insert(" fmt")

rust debugabbels:
    key(escape)
    insert(" rdb")

close debugger:
    key(escape)
    insert(" cdb")

(insert scope | new scope):
    key(escape)
    insert("A {}")
    key(escape)
    key(i)
    key(enter)

surround:
    user.surround(0)
(big surround | surround big):
    user.surround(1)

funk surround: user.surround_special(")", 0)
funk (big surround | surround big): user.surround_special("(", 1)
temple surround: user.surround_special(">", 0)
temple (big surround | surround big): user.surround_special("<", 1)

toss unsaved:
    sleep(25ms)
    key(escape)
    insert(":edit!\n")
    sleep(25ms)
    key(enter)

instruct:
    sleep(25ms)
    key(escape)
    insert(":")

(hilight | highlight):
    key(escape)
    key(shift-v)

select whole:
    key(escape)
    key(shift-v)
    insert("/{\n$")

copy <number> (before | up)$: user.copy_lines(number, "y", "k", "line")
copy <number> (after | down)$: user.copy_lines(number, "y", "j", "line")
copy (state | statement) <number> (before | up)$: user.copy_lines(number, "y", "k", "state")
copy (state | statement) <number> (after | down)$: user.copy_lines(number, "y", "j", "state")
(delete | cut | destroy) <number> (before | up)$: user.copy_lines(number, "d", "k", "line")
(delete | cut | destroy) <number> (after | down)$: user.copy_lines(number, "d", "j", "line")
(delete | cut | destroy) (state | statement) <number> (before | up)$: user.copy_lines(number, "d", "k", "state")
(delete | cut | destroy) (state | statement) <number> (after | down)$: user.copy_lines(number, "d", "j", "state")

(window | pan) left:
    key(escape)
    key(ctrl-h)
(window | pan) right:
    key(escape)
    key(ctrl-l)
(window | pan) up:
    key(escape)
    key(ctrl-k)
(window | pan) down:
    key(escape)
    key(ctrl-j)

pin (funk | function):
    key(escape)
    sleep(25ms)
    insert(" fu")

pin (struct | class):
    key(escape)
    sleep(25ms)
    insert(" su")

flip source:
    key(escape)
    sleep(25ms)
    insert(" hh")

raise:
    key(escape)
    sleep(25ms)
    key(space)
    key(space)

# NEXT
next assign:
    key(escape)
    insert("]=")
next left assign:
    key(escape)
    insert("]l=")
next right assign:
    key(escape)
    insert("]r=")
next block:
    key(escape)
    insert("]b")
next call:
    key(escape)
    insert("]c")
next (struct | class):
    key(escape)
    insert("]s")
next comment:
    key(escape)
    insert("]q")
next (if | conditional):
    key(escape)
    insert("]i")
next (function | funk):
    key(escape)
    insert("]f")
next loop:
    key(escape)
    insert("]l")
next number:
    key(escape)
    insert("]in")
next (parameter | param | org | arg): user.next_param()
next regex:
    key(escape)
    insert("]p")
next return:
    key(escape)
    insert("]r")
next scope:
    key(escape)
    insert("]-")
next fold:
    key(escape)
    insert("]z")
next (statement | state):
    key(escape)
    insert("]t")

# PREV
(preev | previous) assign:
    key(escape)
    insert("[=")
(preev | previous) left assign:
    key(escape)
    insert("[l=")
(preev | previous) right assign:
    key(escape)
    insert("[r=")
(preev | previous) block:
    key(escape)
    insert("[b")
(preev | previous) call:
    key(escape)
    insert("[c")
(preev | previous) (struct | class):
    key(escape)
    insert("[s")
(preev | previous) comment:
    key(escape)
    insert("[q")
(preev | previous) (if | conditional):
    key(escape)
    insert("[i")
(preev | previous) (function | funk):
    key(escape)
    insert("[f")
(preev | previous) loop:
    key(escape)
    insert("[l")
(preev | previous) number:
    key(escape)
    insert("[in")
(preev | previous) (parameter | param | org | arg):
    key(escape)
    insert("[a")
(preev | previous) regex:
    key(escape)
    insert("[p")
(preev | previous) return:
    key(escape)
    insert("[r")
(preev | previous) scope:
    key(escape)
    insert("[-")
(preev | previous) fold:
    key(escape)
    insert("[z")
(preev | previous) (statement | state):
    key(escape)
    insert("[t")

 # goto_next_end = {
 #   ["]]i="] = "@assignment.inner",
 #   ["]]l="] = "@assignment.lhs",
 #   ["]]="] = "@assignment.outer",
 #   ["]]r="] = "@assignment.rhs",
 #   ["]]ib"] = "@block.inner",
 #   ["]]b"] = "@block.outer",
 #   ["]]ic"] = "@call.inner",
 #   ["]]c"] = "@call.outer",
 #   ["]]is"] = "@class.inner",
 #   ["]]s"] = "@class.outer",
 #   ["]]iq"] = "@comment.inner",
 #   ["]]q"] = "@comment.outer",
 #   ["]]ii"] = "@conditional.inner",
 #   ["]]i"] = "@conditional.outer",
 #   ["]]if"] = "@function.inner",
 #   ["]]f"] = "@function.outer",
 #   ["]]il"] = "@loop.inner",
 #   ["]]l"] = "@loop.outer",
 #   ["]]in"] = "@number.inner",
 #   ["]]ia"] = "@parameter.inner",
 #   ["]]a"] = "@parameter.outer",
 #   ["]]ip"] = "@regex.inner",
 #   ["]]p"] = "@regex.outer",
 #   ["]]ir"] = "@return.inner",
 #   ["]]r"] = "@return.outer",
 #   ["]]-"] = { query = "@local.scope", query_group = "locals" },
 #   ["]]z"] = { query = "@fold", query_group = "folds" },
 #   ["]]t"] = "@statement.outer",
 # goto_previous_end = {
 #   ["[[i="] = "@assignment.inner",
 #   ["[[l="] = "@assignment.lhs",
 #   ["[[="] = "@assignment.outer",
 #   ["[[r="] = "@assignment.rhs",
 #   ["[[ib"] = "@block.inner",
 #   ["[[b"] = "@block.outer",
 #   ["[[ic"] = "@call.inner",
 #   ["[[c"] = "@call.outer",
 #   ["[[is"] = "@class.inner",
 #   ["[[s"] = "@class.outer",
 #   ["[[iq"] = "@comment.inner",
 #   ["[[q"] = "@comment.outer",
 #   ["[[ii"] = "@conditional.inner",
 #   ["[[i"] = "@conditional.outer",
 #   ["[[if"] = "@function.inner",
 #   ["[[f"] = "@function.outer",
 #   ["[[il"] = "@loop.inner",
 #   ["[[l"] = "@loop.outer",
 #   ["[[in"] = "@number.inner",
 #   ["[[ia"] = "@parameter.inner",
 #   ["[[a"] = "@parameter.outer",
 #   ["[[ip"] = "@regex.inner",
 #   ["[[p"] = "@regex.outer",
 #   ["[[ir"] = "@return.inner",
 #   ["[[r"] = "@return.outer",
 #   ["[[-"] = { query = "@local.scope", query_group = "locals" },
 #   ["[[z"] = { query = "@fold", query_group = "folds" },
 #   ["[[t"] = "@statement.outer",
 # select = {
select in (assignment | assign): user.make_selection("v", "i=")
(cut | destroy | delete) in (assignment | assign): user.make_selection("d", "i=")
copy in (assignment | assign): user.make_selection("y", "i=")
change in (assignment | assign): user.make_selection("c", "i=")
select left (assignment | assign): user.make_selection("v", "l=")
(cut | destroy | delete) left (assignment | assign): user.make_selection("d", "l=")
copy left (assignment | assign): user.make_selection("y", "l=")
change left (assignment | assign): user.make_selection("c", "l=")
select (assignment | assign): user.make_selection("v", "o=")
(cut | destroy | delete) (assignment | assign): user.make_selection("d", "o=")
copy (assignment | assign): user.make_selection("y", "o=")
change (assignment | assign): user.make_selection("c", "o=")
select right (assignment | assign): user.make_selection("v", "r=")
(cut | destroy | delete) right (assignment | assign): user.make_selection("d", "r=")
copy right (assignment | assign): user.make_selection("y", "r=")
change right (assignment | assign): user.make_selection("c", "r=")
select in block: user.make_selection("v", "ib")
(cut | destroy | delete) in block: user.make_selection("d", "ib")
copy in block: user.make_selection("y", "ib")
change in block: user.make_selection("c", "ib")
select around block: user.make_selection("v", "ab")
(cut | destroy | delete) around block: user.make_selection("d", "ab")
copy around block: user.make_selection("y", "ab")
change around block: user.make_selection("c", "ab")
select in call: user.make_selection("v", "ic")
(cut | destroy | delete) in call: user.make_selection("d", "ic")
copy in call: user.make_selection("y", "ic")
change in call: user.make_selection("c", "ic")
select around call: user.make_selection("v", "ac")
(cut | destroy | delete) around call: user.make_selection("d", "ac")
copy around call: user.make_selection("y", "ac")
change around call: user.make_selection("c", "ac")
select in class: user.make_selection("v", "is")
(cut | destroy | delete) in class: user.make_selection("d", "is")
copy in class: user.make_selection("y", "is")
change in class: user.make_selection("c", "is")
select around class: user.make_selection("v", "as")
(cut | destroy | delete) around class: user.make_selection("d", "as")
copy around class: user.make_selection("y", "as")
change around class: user.make_selection("c", "as")
select in comment: user.make_selection("v", "iq")
(cut | destroy | delete) in comment: user.make_selection("d", "iq")
copy in comment: user.make_selection("y", "iq")
change in comment: user.make_selection("c", "iq")
select around comment: user.make_selection("v", "aq")
(cut | destroy | delete) around comment: user.make_selection("d", "aq")
copy around comment: user.make_selection("y", "aq")
change around comment: user.make_selection("c", "aq")
select in conditional: user.make_selection("v", "ii")
(cut | destroy | delete) in conditional: user.make_selection("d", "ii")
copy in conditional: user.make_selection("y", "ii")
change in conditional: user.make_selection("c", "ii")
select around conditional: user.make_selection("v", "ai")
(cut | destroy | delete) around conditional: user.make_selection("d", "ai")
copy around conditional: user.make_selection("y", "ai")
change around conditional: user.make_selection("c", "ai")
select in (function | funk): user.make_selection("v", "if")
(cut | destroy | delete) in (function | funk): user.make_selection("d", "if")
copy in (function | funk): user.make_selection("y", "if")
change in (function | funk): user.make_selection("c", "if")
select around (function | funk): user.make_selection("v", "af")
(cut | destroy | delete) around (function | funk): user.make_selection("d", "af")
copy around (function | funk): user.make_selection("y", "af")
change around (function | funk): user.make_selection("c", "af")
select in loop: user.make_selection("v", "il")
(cut | destroy | delete) in loop: user.make_selection("d", "il")
copy in loop: user.make_selection("y", "il")
change in loop: user.make_selection("c", "il")
select around loop: user.make_selection("v", "al")
(cut | destroy | delete) around loop: user.make_selection("d", "al")
copy around loop: user.make_selection("y", "al")
change around loop: user.make_selection("c", "al")
select in number: user.make_selection("v", "in")
(cut | destroy | delete) in number: user.make_selection("d", "in")
copy in number: user.make_selection("y", "in")
change in number: user.make_selection("c", "in")
select (parameter | param | org | arg): user.make_selection("v", "ia")
(cut | destroy | delete) (parameter | param | org | arg): user.make_selection("d", "ia")
copy (parameter | param | org | arg): user.make_selection("y", "ia")
change (parameter | param | org | arg): user.make_selection("c", "ia")
select around (parameter | param | org | arg): user.make_selection("v", "aa")
(cut | destroy | delete) around (parameter | param | org | arg): user.make_selection("d", "aa")
copy around (parameter | param | org | arg): user.make_selection("y", "aa")
change around (parameter | param | org | arg): user.make_selection("c", "aa")
select in regex: user.make_selection("v", "ip")
(cut | destroy | delete) in regex: user.make_selection("d", "ip")
copy in regex: user.make_selection("y", "ip")
change in regex: user.make_selection("c", "ip")
select around regex: user.make_selection("v", "ap")
(cut | destroy | delete) around regex: user.make_selection("d", "ap")
copy around regex: user.make_selection("y", "ap")
change around regex: user.make_selection("c", "ap")
select in return: user.make_selection("v", "ir")
(cut | destroy | delete) in return: user.make_selection("d", "ir")
copy in return: user.make_selection("y", "ir")
change in return: user.make_selection("c", "ir")
select around return: user.make_selection("v", "ar")
(cut | destroy | delete) around return: user.make_selection("d", "ar")
copy around return: user.make_selection("y", "ar")
change around return: user.make_selection("c", "ar")
select local scope: user.make_selection("v", "-")
(cut | destroy | delete) local scope: user.make_selection("d", "-")
copy local scope: user.make_selection("y", "-")
change local scope: user.make_selection("c", "-")
select fold: user.make_selection("v", "z")
(cut | destroy | delete) fold: user.make_selection("d", "z")
copy fold: user.make_selection("y", "z")
change fold: user.make_selection("c", "z")
select (statement | state): user.make_selection("v", "t")
(cut | destroy | delete) (statement | state): user.make_selection("d", "t")
copy (statement | state): user.make_selection("y", "t")
change (statement | state): user.make_selection("c", "t")
 # swap_next = {
 #   [">i="] = "@assignment.inner",
 #   [">l="] = "@assignment.lhs",
 #   [">="] = "@assignment.outer",
 #   [">r="] = "@assignment.rhs",
 #   [">ib"] = "@block.inner",
 #   [">b"] = "@block.outer",
 #   [">ic"] = "@call.inner",
 #   [">c"] = "@call.outer",
 #   [">is"] = "@class.inner",
 #   [">s"] = "@class.outer",
 #   [">iq"] = "@comment.inner",
 #   [">q"] = "@comment.outer",
 #   [">ii"] = "@conditional.inner",
 #   [">i"] = "@conditional.outer",
 #   [">if"] = "@function.inner",
 #   [">f"] = "@function.outer",
 #   [">il"] = "@loop.inner",
 #   [">l"] = "@loop.outer",
 #   [">in"] = "@number.inner",
 #   [">a"] = "@parameter.inner",
 #   [">aa"] = "@parameter.outer",
 #   [">ip"] = "@regex.inner",
 #   [">p"] = "@regex.outer",
 #   [">ir"] = "@return.inner",
 #   [">r"] = "@return.outer",
 #   [">-"] = { query = "@local.scope", query_group = "locals" },
 #   [">z"] = { query = "@fold", query_group = "folds" },
 #   [">t"] = "@statement.outer",
 # swap_previous = {
 #   ["<i="] = "@assignment.inner",
 #   ["<l="] = "@assignment.lhs",
 #   ["<="] = "@assignment.outer",
 #   ["<r="] = "@assignment.rhs",
 #   ["<ib"] = "@block.inner",
 #   ["<b"] = "@block.outer",
 #   ["<ic"] = "@call.inner",
 #   ["<c"] = "@call.outer",
 #   ["<is"] = "@class.inner",
 #   ["<s"] = "@class.outer",
 #   ["<iq"] = "@comment.inner",
 #   ["<q"] = "@comment.outer",
 #   ["<ii"] = "@conditional.inner",
 #   ["<i"] = "@conditional.outer",
 #   ["<if"] = "@function.inner",
 #   ["<f"] = "@function.outer",
 #   ["<il"] = "@loop.inner",
 #   ["<l"] = "@loop.outer",
 #   ["<in"] = "@number.inner",
 #   ["<a"] = "@parameter.inner",
 #   ["<aa"] = "@parameter.outer",
 #   ["<ip"] = "@regex.inner",
 #   ["<p"] = "@regex.outer",
 #   ["<ir"] = "@return.inner",
 #   ["<r"] = "@return.outer",
 #   ["<-"] = { query = "@local.scope", query_group = "locals" },
 #   ["<z"] = { query = "@fold", query_group = "folds" },
 #   ["<t"] = "@statement.outer",
