from talon import Context, Module, actions

mod = Module()

@mod.action_class
class Actions:
    def bird(text: str):
        """Capitalize single word"""
        actions.insert(text.capitalize())
