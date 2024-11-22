from talon import Context, Module, actions

mod = Module()

@mod.action_class
class Actions:

    def let(text: str):
        "Inserts a let statement"


ctx = Context()
ctx.matches = r"""
code.language: rust
"""

@ctx.action_class("user")
class UserActions:

    def let(text: str):
        actions.auto_insert("let "+ to_snake_case(text) + " = ")
        actions.key("escape")
        actions.key("A")


def to_snake_case(text):
    import re
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "_", text)
    # Add underscores before uppercase letters, then lower the entire string
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()

