up: key(k)
down: key(j)
left: key(h)
right: key(l)
word: key(w)
back: key(b)

args:
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
option:
    insert("Option<>")
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
ten: key(10)

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
del around word: insert("dow")
del par: insert("dip")
del around par: insert("dap")
