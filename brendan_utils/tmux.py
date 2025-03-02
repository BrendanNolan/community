from talon import Context, Module, actions
import re

mod = Module()


@mod.action_class
class Actions:

    def tmux_pane(number: int):
        """Go to pane"""
        actions.key("ctrl-g")
        actions.key(f"{number}")
