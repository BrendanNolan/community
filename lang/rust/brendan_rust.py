from talon import Context, Module, actions

mod = Module()

@mod.action_class
class Actions:

    def let(text: str):
        "Inserts a let statement"

    def method_call(text: str):
        "Calls method"

    def loop():
        "Loop"

    def while_loop():
        "For loop"

    def for_loop():
        "For loop"


ctx = Context()
ctx.matches = r"""
code.language: rust
"""

@ctx.action_class("user")
class UserActions:

    def let(text: str):
        esc("a")
        actions.insert("let "+ to_snake_case(text) + " = ")
        esc("a");

    def method_call(text: str):
        esc("a")
        l, r = prepare_for_method_call(text)
        actions.insert(to_snake_case(l) + "." + to_snake_case(r) + "()")
        esc("i")

    def loop():
        esc("a")
        actions.insert("loop {")
        enter()

    def while_loop():
        esc("a")
        actions.insert("while  {")
        enter()
        escape()
        actions.insert("?while")
        enter()
        actions.insert("Ela")


    def for_loop():
        esc("a")
        actions.insert("for  {")
        enter()
        escape()
        actions.insert("?for")
        enter()
        actions.insert("Ela")


def question():
    actions.key("?")


def escape():
    actions.key("escape")


def enter():
    actions.key("enter")


def esc(k):
     actions.key("escape")
     actions.key(k)


def to_snake_case(text):
    import re
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "_", text)
    # Add underscores before uppercase letters, then lower the entire string
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()


def prepare_for_method_call(word: str):
    """ Splits word on call"""
    parts = word.split("invoke", 1)
    left = parts[0].strip() if parts else ""
    right = parts[1].strip() if len(parts) > 1 else ""
    if not right:
        return "", left
    return left, right

