neo vim: insert("nvim .\n")

(escape | stake | steak | scape): key(escape)

upwards:
    key(k)
downwards:
    key(j)
leftwards:
    key(h)
rightwards:
    key(l)

left: key(left)
right: key(right)
north: key(up)
down: key(down)

select next: key(ctrl-n)
select preev: key(ctrl-p)

binsert:
    key(escape)
    key(I)
kinsert:
    key(escape)
    insert("A")
finsert:
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

search <user.text>:
    key(escape)
    insert("/{text}\\c\n")
birch <user.text>:
    key(escape)
    insert("?{text}\\c\n")

undo: key(escape u)
redo: key(escape ctrl-r)

find a file:
    key(escape)
    insert(" ff")
vim grep:
    key(escape)
    insert(" gf")
file search:
    key(escape)
    inseert(" fs")
fugitive:
    key(escape)
    insert(" gg")
(disk | vim write | editor write | ritter | writter):
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

(new arg | new org | new argument | new orgument | new param | new parameter):
    key(escape)
    insert("/)\ni, ")

go to func:
    insert("/;\n?)\n%?[a-z,A-Z]\nb")

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
    key(";")
    key(escape)
    insert(":w")
    key(enter)
semi:
    key(escape)
    key(A)
    key(";")
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

(call | calling) wrap:
    key(escape)
    insert("ysiw)i")

surround: insert("ysiw")
surround big: insert("ysiW")

toss unsaved:
    key(escape)
    insert(":edit!\n")

command:
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
next function:
    key(escape)
    insert("]f")
next loop:
    key(escape)
    insert("]l")
next number:
    key(escape)
    insert("]in")
next parameter:
    key(escape)
    insert("]a")
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
next statement:
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
(preev | previous) function:
    key(escape)
    insert("[f")
(preev | previous) loop:
    key(escape)
    insert("[l")
(preev | previous) number:
    key(escape)
    insert("[in")
(preev | previous) parameter:
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
(preev | previous) statement:
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
select assignment inner: user.make_selection("v", "i=")
select assignment lhs: user.make_selection("v", "l=")
select assignment outer: user.make_selection("v", "o=")
select assignment rhs: user.make_selection("v", "r=")
select block inner: user.make_selection("v", "ib")
select block outer: user.make_selection("v", "ab")
select call inner: user.make_selection("v", "ic")
select call outer: user.make_selection("v", "ac")
select class inner: user.make_selection("v", "is")
select class outer: user.make_selection("v", "as")
select comment inner: user.make_selection("v", "iq")
select comment outer: user.make_selection("v", "aq")
select conditional inner: user.make_selection("v", "ii")
select conditional outer: user.make_selection("v", "ai")
select function inner: user.make_selection("v", "if")
select function outer: user.make_selection("v", "af")
select loop inner: user.make_selection("v", "il")
select loop outer: user.make_selection("v", "al")
select number inner: user.make_selection("v", "in")
select parameter inner: user.make_selection("v", "ia")
select parameter outer: user.make_selection("v", "aa")
select regex inner: user.make_selection("v", "ip")
select regex outer: user.make_selection("v", "ap")
select return inner: user.make_selection("v", "ir")
select return outer: user.make_selection("v", "ar")
select local scope: user.make_selection("v", "-")
select fold: user.make_selection("v", "z")
select statement outer: user.make_selection("v", "t")
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
