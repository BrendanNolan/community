neo vim: insert("nvim .\n")

(escape | stake | steak | scape): key(escape)

leader: key(space)

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
up: key(up)
down: key(down)

next: key(ctrl-n)
preev: key(ctrl-p)
(clozer | semicolon): key(;)

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

word: key(escape w)
back: key(escape b)

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
(vim write | editor write | ritter | writter):
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
(next arg | next param):
    key(escape)
    insert("/,\nw")
(preev arg | preev param):
    key(escape)
    insert("?,\nb")

go to func:
    insert("/;\n?)\n%?[a-z,A-Z]\nb")

change: key(escape c i)
change around: key(escape c a)
change line:
    key(escape)
    key(c)
    key(c)
yoink: key(escape y i)
yoink around: key(escape y a)
yoink line:
    key(escape)
    key(y)
    key(y)
delete: key(escape d i)
delete around: key(escape d a)
delete line: key(escape d d)

demi:
    key(escape)
    key(A)
    key(";")
    key(escape)
semi:
    key(escape)
    key(A)
    key(";")
    key(escape)
    key(o)

fixup:
    key(escape)
    key(= =)
selection fixup:
    key(= =)

(call | invoke):
    insert("()")
    key(escape)
    key(i)
temple:
    insert("<>")
    key(escape)
    key(i)

arrow: insert(" -> ")
dub arrow: insert(" => ")
left arrow: insert(" <- ")
less: insert(" < ")
lesseek: insert(" <= ")
greater: insert(" > ")
greatereek: insert(" >= ")
plus: insert(" + ")
minus: insert(" - ")
over: insert(" / ")
remainder: insert(" % ")
in: insert(" in ")

lone arrow: insert("->")
lone dub arrow: insert("=>")
lone left arrow: insert("<-")
lone less: insert("<")
lone lesseek: insert("<=")
lone greater: insert(">")
lone greatereek: insert(">=")
lone plus: insert("+")
lone minus: insert("-")

populate:
    key(escape)
    insert("/^$")
    key(enter)
    key(i)
    key(tab)

grasp:
    key(escape)
    insert("/ ")
    key(enter)
    key(a)
