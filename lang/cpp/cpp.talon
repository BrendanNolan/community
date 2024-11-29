code.language: sea plus plus
-

constant <user.text>$: user.let(text)
variable <user.text>$: user.let_mut(text)
method <user.text>$: user.method_call(text)
(mod | module) <user.text>$: user.mod_block(text)

(funk) <user.text>$: user.func(text)
(pub funk) <user.text>$: user.pub_func(text)

param <user.text>$: user.param(text)

# Control Flow
loop: user.loop()
for loop: user.for_loop()
while loop: user.while_loop()

#Types
integer: insert("int")
condition variable: insert("std::condition_variable")
optional:
    insert("std::optional<>")
    key(escape)
    key(i)
vector:
    insert("std::vector<>")
    key(escape)
    key(i)
string:
    insert("std::string")
