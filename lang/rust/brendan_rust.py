from talon import Context, Module, actions
import re

mod = Module()


@mod.action_class
class Actions:

    def param(text: str):
        "Inserts a param"

    def let(text: str):
        "Inserts a let statement"

    def let_mut(text: str):
        "Inserts a let mut statement"

    def method_call(text: str):
        "Calls method"

    def loop():
        "Loop"

    def while_loop():
        "For loop"

    def for_loop():
        "For loop"

    def mod_block(text: str):
        "Module block"

    def func(text: str):
        "Function"

    def pub_func(text: str):
        "Function"

    def assign(text: str):
        "Assign"


ctx = Context()
ctx.matches = r"""
code.language: rust
"""


@ctx.action_class("user")
class UserActions:

    def param(text: str):
        esc("i")
        actions.insert(to_snake_case(text) + ": ")

    def let(text: str):
        esc("i")
        actions.insert("let " + to_snake_case(text) + " = ")

    def let_mut(text: str):
        esc("i")
        actions.insert("let mut " + to_snake_case(text) + " = ")


    def method_call(text: str):
        esc("i")
        l, r = prepare_for_method_call(text)
        actions.insert(to_snake_case(l) + "." + to_snake_case(r) + "()")
        esc("i")

    def loop():
        esc("i")
        actions.insert("loop {")
        enter()

    def while_loop():
        esc("i")
        actions.insert("while  {")
        enter()
        escape()
        actions.insert("?while")
        enter()
        actions.insert("Ela")

    def for_loop():
        esc("i")
        actions.insert("for  {")
        enter()
        escape()
        actions.insert("?for")
        enter()
        actions.insert("Ela")

    def mod_block(text: str):
        esc("i")
        actions.insert("mod " + to_snake_case(text) + " {")
        enter()

    def func(text: str):
        esc("i")
        actions.insert("fn " + to_snake_case(text) + "() {\n")
        escape()
        actions.insert("?(")
        enter()
        actions.insert("a")

    def pub_func(text: str):
        esc("i")
        actions.insert("pub fn " + to_snake_case(text) + "() {\n")
        escape()
        actions.insert("?(")
        enter()
        actions.insert("a")

    def assign(text: str):
        esc("i")
        actions.insert(to_snake_case(text) + " = ")


def escape():
    actions.key("escape")


def enter():
    actions.key("enter")


def esc(k):
    actions.key("escape")
    actions.key(k)


def to_snake_case(text):
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "_", text)
    # Add underscores before uppercase letters, then lower the entire string
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()


def to_upper_camel(text):
    return ''.join(word.capitalize() for word in re.split(r'[ _-]+', text))


def prepare_for_method_call(word: str):
    """Splits word on call"""
    parts = word.split("invoke", 1)
    left = parts[0].strip() if parts else ""
    right = parts[1].strip() if len(parts) > 1 else ""
    if not right:
        return "", left
    return left, right
