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
    "at symbol": "@",
    "and sign": "&",
    "ampersand": "&",
    # Currencies
    "dollar sign": "$",
    "pound sign": "£",
    # Symbols
    "ref": "&",
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
    "invokes": "(",
    "invoked": "(",
    "invoker": "(",
    "call": "(",
    "calling": "(",
    "bubble": "()",
    "bubbles": "()",
    "round": "(",
    "devoke": ")",
    "deevoke": ")",
    "devokes": ")",
    "deevokes": ")",
    "sound": ")",
    "hound": ")",
    "squirrel": "{",
    "squirrely": "{",
    "squiggle": "{",
    "piggle": "}",
    "girl": "}",
    "girly": "}",
    "slice": "[",
    "dice": "]",
    "rice": "]",
    "scope": "::",
    "cope": "::",
    "period": ".",
    #"dot": ".",
    "don't": ".",
    "prick": ".",
    "brick": ".",
    "equality": "==",
    "less": "<",
    "lesseek": "<=",
    "greater": ">",
    "greatereek": ">=",
    "slash": "/",
    # Brendan Spaced
    "space": " ",
    "leader": " ",
    "cospace": ": ", # Using this instead of "is type" because we need a single word due to the splitting algorithm
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
    #"dot": ".",
    "punk": ".",
    "point": ".",
    "space": " ",
    "leader": " ",
    "assign": " = ",
    "follow": "->",
    "arrow": " -> ",
    "dubarrow": " => ",
    "matcharow": " => ",
    "add": " + ",
    "subtract": " - ",
    "remainder": " % ",
    "divide": " / ",
    "times": " * ",
    "slash": "/",
    "remainder": " % ",
    "percent": " % ",
    "scope": "::",
    # keywords
    "let": "let ",
    "mut": "mut ",
    "mute": "mut ",
    "if": "if ",
    "for": "for ",
    "while": "while ",
}


def join_symbol_aware(words, join_text):
    result = ""
    hammer = False
    capitalize_next = False
    for i, s in enumerate(words):
        if s == "hammer":
            hammer = True
            continue
        if s in symbols:
            hammer = False
            result += symbols[s]
            continue
        if hammer:
            result += s.capitalize()
        else:
            if i > 0 and words[i - 1] not in symbols:
                result += join_text
            result += s
    return result


def hammer_symbol_aware(words):
    result = ""
    capitalize_next = True
    for i, s in enumerate(words):
        if s in symbols:
            result += symbols[s]
        else:
            if capitalize_next:
                result += s.capitalize()
            else:
                result += s.lower()
            capitalize_next = True if s not in symbols else False
    return result


@mod.action_class
class Actions:
    def smart(text: str, init_formatter: str):
        """My attempt at a formatter that does what I want most of the time"""
        assert(init_formatter in {"snake", "hammer", "spaced"})
        text = text.lower()
        words = text.split(" ")
        if init_formatter == "snake":
            actions.insert(join_symbol_aware(words, "_"))
        elif init_formatter == "spaced":
            actions.insert(join_symbol_aware(words, " "))
        elif init_formatter == "hammer":
            actions.insert(hammer_symbol_aware(words))

