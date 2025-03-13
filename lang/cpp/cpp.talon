code.language: cplusplus
-

constant <user.text>$: user.cpp_let(text, "")
variable <user.text>$: user.cpp_let_mut(text, "")
constant (reference | ref) <user.text>$: user.cpp_let(text, "&")
variable (reference | ref) <user.text>$: user.cpp_let_mut(text, "&")
constant pointer <user.text>$: user.cpp_let(text, "*")
variable pointer <user.text>$: user.cpp_let_mut(text, "*")
method <user.text>$: user.cpp_method_call(text)

const: insert("const ")

include:
    insert("#include ")
    user.insert_between('"', '"')

standard include:
    insert("#include ")
    user.insert_between('<', '>')

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
