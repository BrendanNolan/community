code.language: rust

constant <user.text>$: user.let(text)
variable <user.text>$: user.let_mut(text)
method <user.text>$: user.method_call(text)
(mod | module) <user.text>$: user.mod_block(text)

(funk) <user.text>$: user.func(text)
(pub funk) <user.text>$: user.pub_func(text)

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

