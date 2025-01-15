from talon import Context, Module, actions
import re

mod = Module()


def escape():
    actions.key("escape")

def enter():
    actions.key("enter")

symbols = {
    # TODO: I'm not sure why we need these, I think it has something to do with
    # Dragon. Possibly it has been fixed by later improvements to talon? -rntz
    "`": "`",
    ",": ",",  # <== these things
    "back tick": "`",
    "comma": ",",
    # Workaround for issue with conformer b-series; see #946
    "coma": ",",
    "full stop": ".",
    "semicolon": ";",
    "colon": ":",
    "forward slash": "/",
    "question mark": "?",
    "exclamation mark": "!",
    "exclamation point": "!",
    "asterisk": "*",
    "hash sign": "#",
    "number sign": "#",
    "percent sign": "%",
    "at sign": "@",
    "and sign": "&",
    "ampersand": "&",
    # Currencies
    "dollar sign": "$",
    "pound sign": "£",
    "hyphen": "-",
    "L paren": "(",
    "left paren": "(",
    "R paren": ")",
    "point": ".",
    "sing quote": "'",
    "single quote": "'",
    "apostrophe": "'",
    "L square": "[",
    "left square": "[",
    "brack": "[",
    "bracket": "[",
    "left bracket": "[",
    "right square": "]",
    "r brack": "]",
    "r bracket": "]",
    "right bracket": "]",
    "minus": "-",
    "dash": "-",
    "equals": "=",
    "plus": "+",
    "grave": "`",
    "tilde": "~",
    "r brace": "}",
    "angle": "<",
    "langle": "<",
    "less than": "<",
    "dangle": ">",
    "R angle": ">",
    "right angle": ">",
    "greater than": ">",
    "star": "*",
    "hash": "#",
    "percent": "%",
    "math hat": "^",
    "amper": "&",
    "pipe": "|",
    "dub quote": '"',
    "quote": '"',
    "quad": '"',
    "twin": "'",
    "double quote": '"',
    # Currencies
    "dollar": "$",
    "pound": "£",
    # Brendan
    "item": ", ",
    "semco": ";",
    "question": "?",
    "slash": "/",
    "backslash": "\\",
    "bang": "!",
    "down score": "_",
    "underscore": "_",
    "under": "_",
    "you score": "_",
    "paren": "(",
    "darren": ")",
    "invoke": "(",
    "call": "(",
    "calling": "(",
    "round": "(",
    "devoke": ")",
    "deevoke": ")",
    "sound": ")",
    "hound": ")",
    "squirrel": "{",
    "squirrely": "{",
    "girl": "}",
    "girly": "}",
    "slice": "[",
    "dice": "]",
    "rice": "]",
    "scope": "::",
    "period": ".",
    "dot": ".",
    "don't": ".",
    "prick": ".",
    "brick": ".",
    "punk": ".",
    "equality": "==",
    "less": "<",
    "lesseek": "<=",
    "greater": ">",
    "greatereek": ">=",
    "slash": "/",
    # Brendan Spaced
    "space": " ",
    "leader": " ",
    "is type": ": ",
    "item": ", ",
    "semco": ";",
    "question": "?",
    "backslash": "\\",
    "bang": "!",
    "tilde": "~",
    "down score": "_",
    "underscore": "_",
    "under": "_",
    "you score": "_",
    "paren": "(",
    "darren": ")",
    "round": "(",
    "invoke": "(",
    "sound": ")",
    "hound": ")",
    "squirrel": "{",
    "squirrely": "{",
    "girl": "}",
    "girly": "}",
    "slice": "[",
    "dice": "]",
    "rice": "]",
    "scope": "::",
    "period": ".",
    "dot": ".",
    "punk": ".",
    "space": " ",
    "leader": " ",
    "assign": " = ",
    "follow": "->",
    "arrow": " -> ",
    "dub arrow": " => ",
    "left arrow": " <- ",
    "plus equal": " += ",
    "minus equal": " -= ",
    "remainder equal": " %= ",
    "percent equal": " %= ",
    "slash equal": " /= ",
    "star equal": " *= ",
    "is equal": " == ",
    "is less": " < ",
    "is lesseek": " <= ",
    "is greater": " > ",
    "is greatereek": " >= ",
    "plus": " + ",
    "minus": " - ",
    "slash": "/",
    "remainder": " % ",
    "percent": " % ",
    "scope": "::",
    "logic and": " && ",
    "logic or": " || ",
}

@mod.action_class
class Actions:
    def smart(text: str, init_formatter: str):
        """My attempt at a formatter that does what I want most of the time"""
        assert(init_formatter in {"snake", "hammer", "spaced"})
        text = text.lower()
        words = text.split(" ")
        result = ""
        if init_formatter == "snake":
            for i, s in enumerate(words):
                if s in symbols:
                    result += symbols[s]
                else:
                    if i > 0 and words[i - 1] not in symbols:
                        result += "_"
                    result += s
        elif init_formatter == "spaced":
            for i, s in enumerate(words):
                if s in symbols:
                    result += symbols[s]
                else:
                    if i > 0 and words[i - 1] not in symbols:
                        result += " "
                    result += s
        elif init_formatter == "hammer":
            capitalize_next = True
            for i, s in enumerate(strings):
                if s in symbols:
                    result += symbols[s]
                else:
                    if capitalize_next:
                        result += s.capitalize()
                    else:
                        result += s.lower()
                    capitalize_next = True if s not in symbols else False
        actions.insert(result)

