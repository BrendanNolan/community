from talon import actions

def sturgeon(text: str):
    actions.auto_insert("let "+ to_snake_case(text) + " = ")
    actions.key("escape")
    actions.key("A")

