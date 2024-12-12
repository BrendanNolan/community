neo vim: insert("nvim .\n")

north: key(k)
south: key(j)
east: key(l)
west: key(h)
upwards: insert("k0")
downwards: insert("j0")
leftwards: key(h)
rightwards: key(l)

binsert:
    key(escape)
    key(I)
kinsert:
    key(escape)
    insert("A")
finsert:
    key(escape)
    insert("A ")

record: key(q)
play: key(@)
market: insert("mz")
piggy: insert("`z")

word: key(w)
back: key(b)

search <user.text>: insert("/{text}\\c\n")
birch <user.text>: insert("?{text}\\c\n")
safe search <user.text>: insert("/")
safe birch <user.text>: insert("?")

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
(vim write | eevim write):
    key(escape)
    insert(":w")
    key(enter)
(vim quit | eevim quit):
    key(escape)
    insert(":q")
    key(enter)
(vim force quit | eevim force quit):
    key(escape)
    insert(":q!")
    key(enter)

first arg:
    insert("/(\n/[a-z,A-Z]\n")
second arg:
    insert("/(\n/,\nw")
third arg:
    insert("/(\n/,\nw/,\nw")
change first arg:
    insert("/(\n/[a-z,A-Z]\ncia")
change second arg:
    insert("/(\n/,\nwcia")
change third arg:
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
change line: key(escape c c)
delete: key(escape d i)
delete around: key(escape d a)
delete line: key(escape d d)

backspace:
    key(backspace)

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

dub new:
    key(escape)
    key("O")
    key(escape)
    key("O")

squeeze:
    key(escape)
    insert("$i")
plow:
    key(escape)
    insert("A ")
append:
    key(escape)
    key("A")
prepend:
    key(escape)
    key("I")

