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
    inseert(" gf")
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

next arg:
    key(escape)
    insert("/)\ni, ")

go to func:
    insert("/;\n?)\n%?[a-z,A-Z]\nb")

change word: insert("ciw")
change around word: insert("caw")
change par: insert("cip")
change around par: insert("cap")
del word: insert("diw")
del around word: insert("daw")
del par: insert("dip")
del around par: insert("dap")

squeeze:
    key(escape)
    insert("$i")
plow:
    key(escape)
    insert("A ")
