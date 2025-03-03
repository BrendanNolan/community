from talon import Context, Module, actions
import re

mod = Module()


def escape():
    actions.key("escape")

def enter():
    actions.key("enter")


@mod.action_class
class Actions:
    def copy_lines(number: int, action: str, direction: str, type: str):
        """Copies either a line or a statement"""
        escape()
        actions.insert("my")
        actions.insert(f"{number}{direction}")
        target = ""
        if type == "state":
            target = "t"
        else:
            # type == "line"
            target = action
        actions.insert(f"{action}{target}")
        actions.insert("`y")

    def make_selection(action: str, command: str):
        """Makes a copy,delete,change, or select selection"""
        # action is y,d,c,v, with the usual vim meaning
        escape()
        actions.insert(f"{action}{command}")

    def next_param():
        """next param"""
        escape()
        ctions.insert("]a")
        ctions.sleep("20ms")
        ctions.insert(" gc")

    def buffer(text: str):
        """Tries to open a buffer automatically from its name by searching the smashed
        text in telescope"""
        escape()
        actions.insert(" ff")
        if text == "":
            return
        actions.insert(to_smashed_lower(text))
        enter()

    def north(number: int):
        """ Go up"""
        escape()
        actions.insert(f"{number}k0")

    def south(number: int):
        """ Go down"""
        escape()
        actions.insert(f"{number}j0")

    def surround(the_character: str, big: int):
        """Wrapping text"""
        word_string = "w"
        if big:
            word_string = "W"
        escape()
        actions.insert(f"ysi{word_string}{the_character}")
        actions.insert("i")


def to_snake_case(text):
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "_", text)
    # Add underscores before uppercase letters
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()


def to_upper_camel(text):
    return ''.join(word.capitalize() for word in re.split(r'[ _-]+', text))


def to_smashed_lower(text):
    return ''.join(word.lower() for word in re.split(r'[ _-]+', text))
