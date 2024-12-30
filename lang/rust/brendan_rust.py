from talon import Context, Module, actions
import re

mod = Module()


@mod.action_class
class Actions:

    def param(text: str):
        """Inserts a param"""
        actions.insert(to_snake_case(text) + ": ")

    def let(text: str):
        """Inserts a let statement"""
        actions.insert("let " + to_snake_case(text) + " = ")

    def let_mut(text: str):
        """Inserts a let mut statement"""
        actions.insert("let mut " + to_snake_case(text) + " = ")

    def method_call(text: str):
        """Calls method"""
        l, r = prepare_for_method_call(text)
        actions.insert(to_snake_case(l) + "." + to_snake_case(r) + "()")
        esc("i")

    def while_loop():
        """While loop"""
        actions.insert("while ")

    def for_loop():
        """For loop"""
        actions.user.insert_between("for ", " in")

    def if_statement():
        """For loop"""
        actions.insert("if ")

    def mod_block(text: str):
        """Module block"""
        actions.insert("mod " + to_snake_case(text) + " {")
        enter()

    def func(text: str):
        """Function"""
        actions.insert("fn " + to_snake_case(text) + "()")
        escape()
        actions.insert("i")

    def assign(text: str):
        """Assign"""
        actions.insert(to_snake_case(text) + " = ")


def escape():
    actions.key("escape")


def enter():
    actions.key("enter")


def esc(k):
    actions.key("escape")
    actions.key(k)


def to_snake_case(text):
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "_", text)
    # Add underscores before uppercase letters, then lower the entire string
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()


def to_upper_camel(text):
    return ''.join(word.capitalize() for word in re.split(r'[ _-]+', text))


def prepare_for_method_call(word: str):
    """Splits word on call"""
    parts = word.split("calling", 1)
    if len(parts) < 2:
        parts = word.split("invoke", 1)
    if len(parts) < 2:
        parts = word.split("call", 1)
    left = parts[0].strip() if parts else ""
    right = parts[1].strip() if len(parts) > 1 else ""
    if not right:
        return "", left
    return left, right
