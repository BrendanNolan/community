from talon import Context, Module, actions
import re

mod = Module()


@mod.action_class
class Actions:

    def tmux_pane(number: int):
        """Go to pane"""
        actions.key("ctrl-g")
        actions.key(f"{number}")

    def tmux_search(text: str):
        """Tmux search"""
        actions.key("ctrl-g")
        actions.key("y")
        actions.sleep("150ms")
        actions.insert(to_smashed_lower(text))


def to_smashed_lower(text: str):
    return ''.join(word.lower() for word in re.split(r'[ _-]+', text))
