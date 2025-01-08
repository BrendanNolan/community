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

newline: insert("\\n")

and then: sleep(50ms)

(trash | backspace | destroy): key(backspace)
(garbage | del): key(delete)

(tab | tabby): key(tab)

leet: insert("leet")
len: insert("len")

scope: insert("::")
logic and: insert(" && ")
logic (pipe | or): insert(" || ")
is type: insert(": ")
item: insert(", ")

spacey <user.text>: "{text} "

assign: insert(" = ")
follow: insert("->")
arrow: insert(" -> ")
dub arrow: insert(" => ")
left arrow: insert(" <- ")
plus (equal | eek): insert(" += ")
minus (equal | eek): insert(" -= ")
remainder (equal | eek): insert(" %= ")
percent (equal | eek): insert(" %= ")
slash (equal | eek): insert(" /= ")
star (equal | eek): insert(" *= ")
is equal: insert(" == ")
is less: insert(" < ")
is lesseek: insert(" <= ")
is greater: insert(" > ")
is greatereek: insert(" >= ")
plus: insert(" + ")
minus: insert(" - ")
remainder: insert(" % ")
percent: insert("%")
