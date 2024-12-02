from talon import Context, Module, actions

mod = Module()

@mod.action_class
class Actions:

    def tst(text: str):
        "Test"


ctx = Context()
ctx.matches = r"""
code.language: rust
"""


@ctx.action_class("user")
class UserActions:

    def tst(text: str):
        actions.insert(text)

