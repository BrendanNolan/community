from talon import Context, Module, actions
import re

mod = Module()


def escape():
    actions.key("escape")

def enter():
    actions.key("enter")

def other_direction(i_or_j):
    if i_or_j == "i"
        return "j"
    else
        return "i"


@mod.action_class
class Actions:
    def copy_lines(number: int, action: str, direction: str, type: str):
        """Copies either a line or a statement"""
        escape()
        actions.insert(f"{number}{direction}")
        target = ""
        if type == "state":
            target = "t"
        else:
            # type == "line"
            target = "action"
        actions.insert(f"{action}{target}")
        actions.insert(f"{number}{other_direction(direction)}")
