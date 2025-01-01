code.language: rust
-
constant <user.text>$: user.let(text)
variable <user.text>$: user.let_mut(text)
method <user.text>$: user.method_call(text)
(call | invoke) <user.text>$: user.function_call(text)
(mod | module) <user.text>$: user.mod_block(text)

(funk | function | funk) <user.text>$: user.func(text)

(make macro | create macro | hash macro): user.insert_between("#[", "]")

param <user.text>$: user.param(text)

# Control Flow
loop:
    insert("loop {}")
    key(escape)
    key(i)
    key(enter)
for loop: user.for_loop()
while loop: user.while_loop()
if statement: user.if_statement()
return: user.insert_between("return ", ";")
(insert | add) return type:
    key(escape)
    insert("/)")
    key(enter)
    key(a)
    insert(" -> ")
call wrap:
    key(escape)
    insert("ysiw)i")

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
option: user.insert_between("Option<", ">")
(some | sum | something): user.insert_between("Some(", ")")
(non | none | nun | nothing): insert("None")
result: user.insert_between("Result<", ">")
error: user.insert_between("Error(", ")")
(ki | quay | key): insert("key")
(vec | vector): user.insert_between("Vec<", ">")
(vec | vector) bang: user.insert_between("vec![", "]")
stir: insert("str")
(effen | closure): insert("Fn")
(effen | closure) once: insert("FnOnce")
(effen | closure) (mute | mutable): insert("FnMut")

# Scopes
(stud | stood): insert("std::")
collections: insert("collections::")
(comp | compare): insert("cmp::")

# Impl
(imple | impell | impel): insert("impl ")
