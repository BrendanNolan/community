from talon import Context, Module, actions
import re

mod = Module()


@mod.action_class
class Actions:

    def switch(text: str):
        """Inserts a short switch"""
        actions.insert(" -" + text + " ")

    def long_switch(text: str):
        """Inserts a long switch"""
        actions.insert(" --" + to_kebob_case(text) + " ")


def to_kebob_case(text):
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "-", text)
    # Add underscores before uppercase letters, then lower the entire string
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()
