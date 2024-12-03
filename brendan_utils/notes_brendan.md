# Language Modes

Say "force <language>" to enable a language mode. Say "clear language mode <language>" to clear a
language mode.tail ~/.talon/talon.log

# Ordinal Numbers

Ordinal numbers seem to work out of the box for repeating commands. So you can say "whale forty
fifth" to press 'w' five times.

# Examples of Settings

core/keys/ dir (in particular the core/keys/keys.py and core/keys/keys.talon) files are worth
looking at.

# Upper Camel

Talon uses "hammer" to refer to what I call upper camel case. Saying "format help" will show a list
of formattings.

# Controlling How Talon Formats What You Say As Part Of A Larger Command

Consider the following line from the community talon config:

`     inside (double quotes | dub quotes): user.insert_between('"', '"')     `

It will honour what you say. So, if you say "inside quotes cap drum", it will write `'cd'`, if you
say "inside quotes say charlie drum", it will write `'charlie drum'`, if you say "inside quotes
snake charlie drum", it will write `'charlie_drum'`, etc.
