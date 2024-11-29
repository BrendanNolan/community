neo vim: insert("nvim .\n")

upwards: key(k)
downwards: key(j)
leftwards: key(h)
rightwards: key(l)
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
vim write:
    key(escape)
    insert(":w")
    key(enter)
vim quit:
    key(escape)
    insert(":q")
    key(enter)
vim force quit:
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

(new arg | new param):
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

closet:
    key(escape)
    key(space)
    key(";")
close it:
    key(escape)
    key(space)
    key(";O")

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

