import re


def to_snake_case(text):
    # Replace spaces or hyphens with underscores
    text = re.sub(r"[\s\-]+", "_", text)
    # Add underscores before uppercase letters, then lower the entire string
    text = re.sub(r"([a-z])([A-Z])", r"\1_\2", text)
    return text.lower()


def to_upper_camel(text):
    return ''.join(word.capitalize() for word in re.split(r'[ _-]+', text))
