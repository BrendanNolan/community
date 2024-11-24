code.language: rust

constant <phrase>$: user.let(phrase)
variable <phrase>$: user.let_mut(phrase)
method <phrase>$: user.method_call(phrase)
(mod | module) <phrase>$: user.mod_block(phrase)

(funk) <phrase>$: user.func(phrase)
(pub funk) <phrase>$: user.pub_func(phrase)

closet:
    key(escape)
    key(space)
    key(";")

loop: user.loop()
for loop: user.for_loop()
while loop: user.while_loop()
eye end:
    key(escape)
    key("A")
eye start:
    key(escape)
    key("I")
eye send:
    key(escape)
    key("A")
    key(space)

