from talon import Module

mod = Module()

@mod.action_class
class Actions:
    def bird(text: str):
        """Capitalize single word"""
        return text.capitalize()
