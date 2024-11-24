code.language: rust

constant <phrase>$: user.let(phrase)
variable <phrase>$: user.let_mut(phrase)
method <phrase>$: user.method_call(phrase)
(mod | module) <phrase>$: user.mod_block(phrase)

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

