code.language: cplusplus
-

constant <user.text>$: user.let(text, "")
variable <user.text>$: user.let_mut(text, "")
constant reference <user.text>$: user.let(text, "&")
variable reference <user.text>$: user.let_mut(text, "&")
constant pointer <user.text>$: user.let(text, "*")
variable pointer <user.text>$: user.let_mut(text, "*")
method <user.text>$: user.method_call(text)

# Control Flow
loop: user.cpp_loop()
for loop: user.cpp_for_loop()
while loop: user.cpp_while_loop()

#Types
integer: insert("int")
size tee: insert("size_t")
condition variable: insert("std::condition_variable")
optional:
    insert("std::optional<>")
    key(escape)
    key(i)
vector:
    insert("std::vector<>")
    key(escape)
    key(i)
string: insert("std::string")
