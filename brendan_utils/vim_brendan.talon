neo vim: insert("nvim .\n")
open neo vim: insert("nvim ")

(escape | stake | steak | scape): key(escape)

# ascend:
#     key(escape)
#     insert("k")
#     insert("0")
# descend:
#     key(escape j 0)
upwards:
    key(k)
    key(0)
downwards:
    key(j)
    key(0)
leftwards:
    key(h)
rightwards:
    key(l)

above [<number>]: user.above(number or -1)
(newline | below) [<number>]: user.below(number or -1)
duplicate: key(escape y y p)

left: key(left)
right: key(right)
north <number>: user.north(number)
south <number>: user.south(number)

select next: key(ctrl-n)
select preev: key(ctrl-p)

(climb | clime | binsert):
    key(escape)
    key(I)
(fall | kinsert):
    key(escape)
    insert("A")
(shunt | finsert | chant):
    key(escape)
    insert("A ")
squeeze:
    key(escape)
    insert("$i")

slide:
    key(escape)
    key(f)
sloop:
    key(escape)
    key(F)
leap:
    key(escape)
    key(s)

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

record: key(escape q)
play: key(escape @)
market:
    key(escape)
    insert("mz")
piggy:
    key(escape)
    insert("`z")

goplace <user.text>:
    key(escape)
    insert("/{text}\\c\n")
    insert("ciw")
replace <user.text>:
    key(escape)
    insert("?{text}\\c\n")
    insert("ciw")
search <user.text>:
    key(escape)
    insert("0")
    insert("/{text}\\c\n")
birch <user.text>:
    key(escape)
    insert("0")
    insert("?{text}\\c\n")

undo: key(escape u)
redo: key(escape ctrl-r)

buffer <user.text>:
    user.buffer(text)
find a file: insert(" ff")
vim grep:
    key(escape)
    insert(" gf")
file search:
    key(escape)
    inseert(" fs")
fugitive:
    key(escape)
    insert(" gg")
(disk | save | vim write | editor write | ritter | writter):
    key(escape)
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
push: key(escape c t)
push ink: key(escape c f)
(pop | pup): key(escape c T)
(pop | pup) ink: key(escape c F)
drip <number>: user.insert_line_up(number)
drop <number>: user.insert_line_down(number)
head: key(escape b i)
tail: key(escape e a)
big head: key(escape shift-b i)
big tail: key(escape shift-e a)
change word: key(escape c i w)
change big word: key(escape c i shift-w)
change: key(escape c i)
change around: key(escape c a)
change line:
    key(escape)
    sleep(50ms)
    key(c)
    key(c)
yoink word: key(escape y i w)
yoink big word: key(escape y i shift-w)
yoink: key(escape y i)
yoink around: key(escape y a)
yoink line:
    key(escape)
    key(y)
    key(y)
delete word: key(escape d i w)
delete big word: key(escape d i shift-w)
delete: key(escape d i)
delete around: key(escape d a)
delete line: key(escape d d)
select word: key(escape v i w)
select big word: key(escape v i shift-w)
select: key(escape d i)
select around: key(escape d a)
select line: key(escape d d)

demi:
    key(escape)
    key(A)
    key(;)
    key(escape)
    insert(":w")
    key(enter)
semi:
    key(escape)
    key(A)
    key(;)
    key(escape)
    insert(":w")
    key(enter)
    key(o)

fixup:
    key(escape)
    key(= =)
selection fixup:
    key(= =)

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
    key(escape)
    insert(":edit!\n")
    sleep(25ms)
    key(enter)

instruct:
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
