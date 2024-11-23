from talon import Context, Module, actions

mod = Module()

@mod.action_class
class Actions:

    def let(text: str):
        "Inserts a let statement"

    def method_call(text: str):
        "Calls method"

ctx = Context()
ctx.matches = r"""
code.language: rust
"""

@ctx.action_class("user")
class UserActions:

    def let(text: str):
        actions.key("escape")
        actions.key("a")
        actions.auto_insert("let "+ to_snake_case(text) + " = ")
        actions.key("escape")
        actions.key("A")

    def method_call(text: str):
        actions.key("escape")
        actions.key("a")
        l, r = prepare_for_method_call(text)
        actions.auto_insert(to_snake_case(l) + "." + to_snake_case(r) + "()")
        actions.key("escape")
        actions.key("i")


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

