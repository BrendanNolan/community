# code.language: sea plus plus
# -
#
# constant <user.text>$: user.cpp_let(text)
# variable <user.text>$: user.cpp_let_mut(text)
# method <user.text>$: user.cpp_method_call(text)
# (mod | module) <user.text>$: user.cpp_mod_block(text)
#
# (funk) <user.text>$: user.cpp_func(text)
# (pub funk) <user.text>$: user.cpp_pub_func(text)
#
# param <user.text>$: user.cpp_param(text)
#
# # Control Flow
# loop: user.cpp_loop()
# for loop: user.cpp_for_loop()
# while loop: user.cpp_while_loop()
#
# #Types
# integer: insert("int")
# condition variable: insert("std::condition_variable")
# optional:
#     insert("std::optional<>")
#     key(escape)
#     key(i)
# vector:
#     insert("std::vector<>")
#     key(escape)
#     key(i)
# string:
#     insert("std::string")
