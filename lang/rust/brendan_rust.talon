code.language: rust
-
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
integer eight: insert("i8")
integer sixteen: insert("i16")
integer thirty two: insert("i32")
integer sixty four: insert("i64")
float eight: insert("f8")
float sixteen: insert("f16")
float thirty two: insert("f32")
float sixty four: insert("f64")

condition variable: insert("CondVar")

option:
    insert("Option<>")
    key(escape)
    key(i)

vec:
    insert("Vec<>")
    key(escape)
    key(i)

add type:
    key(escape)
    insert("a: ")
