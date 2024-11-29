neo vim: insert("nvim .\n")

go up: key(k)
go down: key(j)
go left: key(h)
go right: key(l)
word: key(w)
back: key(b)
search <user.text>: insert("/{text}\\c\n")
birch <user.text>: insert("?{text}\\c\n")
safe search <user.text>: insert("/")
safe birch <user.text>: insert("?")

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

change: insert("ci")
change around: insert("ca")
del: insert("di")
del around: insert("da")

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

