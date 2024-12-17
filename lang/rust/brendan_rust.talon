code.language: rust
-
constant <user.text>$: user.let(text)
variable <user.text>$: user.let_mut(text)
assign <user.text>$: user.assign(text)
method <user.text>$: user.method_call(text)
(mod | module) <user.text>$: user.mod_block(text)

scope: insert("::")

(funk) <user.text>$: user.func(text)
(pub funk) <user.text>$: user.pub_func(text)

make macro: user.insert_between("#[", "]")

param <user.text>$: user.param(text)
add type:
    key(escape)
    insert("a: ")

# Control Flow
loop: user.loop()
for loop: user.for_loop()
while loop: user.while_loop()
if statement: user.if_statement()

# Types
you size: insert("usize")
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
    key(escape i)
    user.insert_between("Option<", ">")
(some | sum | something):
    key(escape i)
    user.insert_between("Some(", ")")
(non | none | nun | nothing):
    key(escape i)
    insert("None")
(ki | quay | key):
    key(escape i)
    insert("key")
(vec | vector):
    key(escape i)
    user.insert_between("Vec<", ">")
stir:
    key(escape i)
    insert("str")
