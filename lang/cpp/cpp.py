from talon import Context, Module, actions

import re

mod = Module()


@mod.action_class
class Actions:

    def cpp_let(text: str, decoration: str):
        """Inserts a let statement"""
        actions.insert(f"const auto{decoration} " + cpp_to_snake_case(text) + " = ")

    def cpp_let_mut(text: str, decoration: str):
        """Inserts a let mut statement"""
        actions.insert(f"auto{decoration} " + cpp_to_snake_case(text) + " = ")

    def cpp_method_call(text: str):
        """Calls method"""
        l, r = cpp_prepare_for_method_call(text)
        actions.insert(cpp_to_snake_case(l) + "." + cpp_to_snake_case(r))
        actions.user.insert_between("(", ")")

    def cpp_while_loop():
        """While loop"""
        actions.insert("while ")
        actions.user.insert_between("(", ")")

    def cpp_for_loop():
        """For loop"""
        actions.user.insert("for ")
        actions.user.insert_between("(", ")")

    def cpp_if_statement():
        """For loop"""
        actions.insert("if ")
        actions.user.insert_between("(", ")")


def cpp_escape():
    actions.key("escape")


def cpp_enter():
    actions.key("enter")


def cpp_prepare_for_method_call(word: str):
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


def cpp_to_snake_case(text):
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "_", text)
    # Add underscores before uppercase letters
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()


def cpp_to_upper_camel(text):
    return ''.join(word.capitalize() for word in re.split(r'[ _-]+', text))


def cpp_to_smashed_lower(text):
    return ''.join(word.lower() for word in re.split(r'[ _-]+', text))

