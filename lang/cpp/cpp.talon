code.language: cplusplus
-

constant <user.text>$: user.cpp_let(text, "")
variable <user.text>$: user.cpp_let_mut(text, "")
constant (reference | ref) <user.text>$: user.cpp_let(text, "&")
variable (reference | ref) <user.text>$: user.cpp_let_mut(text, "&")
constant pointer <user.text>$: user.cpp_let(text, "*")
variable pointer <user.text>$: user.cpp_let_mut(text, "*")
method <user.text>$: user.cpp_method_call(text)
dynamic cast: insert("dynamic_cast<")

const: insert("const ")

include:
    insert("#include ")
    user.insert_between('"', '"')

standard include:
    insert("#include ")
    user.insert_between('<', '>')

# Control Flow
for loop: user.cpp_for_loop()
while loop: user.cpp_while_loop()
if statement: user.cpp_if_statement()

# Keywords
class: "class "
enum: "enum "
new: "new "
static cast: "static_cast<"
dynamic cast: "dynamic_cast<"

#Types
void: insert("void ")
bool: insert("bool ")
integer: insert("int")
size tee: insert("size_t")
condition variable: insert("std::condition_variable")
optional:
    insert("std::optional<")
vector:
    insert("std::vector<>")
    key(escape)
    key(i)
string: insert("std::string")
mutex: insert("std::mutex")
lock guard: insert("std::lock_guard")
map: insert("std::map<")
unordered map: insert("std::unordered_map<")
(stud | stood): insert("std::")
(pair | par): insert("std::pair<")

see out: insert("std::cout << ")
stream: insert(" << ")
