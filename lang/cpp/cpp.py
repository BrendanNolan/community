from talon import Context, Module, actions
import re

mod = Module()


@mod.action_class
class Actions:

    def cpp_param(text: str):
        "Inserts a param"

    def cpp_let(text: str):
        "Inserts a let statement"

    def cpp_let_mut(text: str):
        "Inserts a let mut statement"

    def cpp_method_call(text: str):
        "Calls method"

    def cpp_loop():
        "Loop"

    def cpp_while_loop():
        "For loop"

    def cpp_for_loop():
        "For loop"

    def cpp_mod_block(text: str):
        "Module block"

    def cpp_func(text: str):
        "Function"

    def cpp_pub_func(text: str):
        "Function"


ctx = Context()
ctx.matches = r"""
code.language: rust
"""


@ctx.action_class("user")
class UserActions:

    def cpp_param(text: str):
        actions.insert(to_snake_case(text) + ": ")

    def cpp_let(text: str):
        actions.insert("let " + to_snake_case(text) + " = ")

    def cpp_let_mut(text: str):
        actions.insert("let mut " + to_snake_case(text) + " = ")


    def cpp_method_call(text: str):
        l, r = prepare_for_method_call(text)
        actions.insert(to_snake_case(l) + "." + to_snake_case(r) + "()")
        esc("i")

    def cpp_loop():
        actions.insert("loop {")
        enter()

    def cpp_while_loop():
        actions.insert("while  {")
        enter()
        escape()
        actions.insert("?while")
        enter()
        actions.insert("Ela")

    def cpp_for_loop():
        actions.insert("for  {")
        enter()
        escape()
        actions.insert("?for")
        enter()
        actions.insert("Ela")

    def cpp_mod_block(text: str):
        actions.insert("mod " + to_snake_case(text) + " {")
        enter()

    def cpp_func(text: str):
        actions.insert("fn " + to_snake_case(text) + "() {\n")
        escape()
        actions.insert("?(")
        enter()
        actions.insert("a")

    def cpp_pub_func(text: str):
        actions.insert("pub fn " + to_snake_case(text) + "() {\n")
        escape()
        actions.insert("?(")
        enter()
        actions.insert("a")


def cpp_escape():
    actions.key("escape")


def cpp_enter():
    actions.key("enter")


def cpp_esc(k):
    actions.key("escape")
    actions.key(k)


def cpp_to_snake_case(text):
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "_", text)
    # Add underscores before uppercase letters, then lower the entire string
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()


def cpp_to_upper_camel(text):
    return ''.join(word.capitalize() for word in re.split(r'[ _-]+', text))


def cpp_prepare_for_method_call(word: str):
    """Splits word on call"""
    parts = word.split("invoke", 1)
    left = parts[0].strip() if parts else ""
    right = parts[1].strip() if len(parts) > 1 else ""
    if not right:
        return "", left
    return left, right
