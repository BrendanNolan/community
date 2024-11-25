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

call:
    insert("()")
    key(escape)
    key(i)
temple:
    insert("<>")
    key(escape)
    key(i)
optional:
    insert("std::optional<>")
    key(escape)
    key(i)

zero: key(0)
one: key(1)
two: key(2)
three: key(3)
four: key(4)
five: key(5)
six: key(6)
seven: key(7)
eight: key(8)
nine: key(9)
ten:
    key(1)
    key(0)

trash: key(backspace)
del: key(delete)

leet: insert("leet")

neo vim: insert("nvim .\n")

first arg:
    insert("/(\n/[a-z,A-Z]\n")
second arg:
    insert("/(\n/,\nw")
third arg:
    insert("/(\n/,\nw/,\nw")

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
