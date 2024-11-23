code.language: rust

constant <user.text>: user.let(text)
variable <user.text>: user.let_mut(text)
method <user.text>: user.method_call(text)
closet:
    key(escape)
    key(space)
    key(";")

loop: user.loop()
for loop: user.for_loop()
while loop: user.while_loop()
insert end:
    key(escape)
    key("A")
insert start:
    key(escape)
    key("I")
