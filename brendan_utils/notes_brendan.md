# Language Modes

Say "force <language>" to enable a language mode. Say "clear language mode <language>" to clear a
language mode.tail ~/.talon/talon.log

# Making Words Available as Commands and as Normal Words

You can use the symbol_keywords list for symbols and ignore the punctuation_words list;
most punctuation characters should also end phrases, so you can put them in the
phrase_enders file.

// If you go to the core/keys/keys.py file, you will find two lists, one is called `punctuation_words`
// and one is called `symbol_keywords`. The former will always print the symbol and the latter will
// print the symbol when used as a command and the word when used as part of a sentence.

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

# Outstanding Questions

Can I make formatters ("snake", "kebob" etc) respect my `punctuation_words` list (as defined in
`core/keys/keys.py`) in the same way that dictation mode does? I have added "dot" to my
`punctuation_words` list, so that it prints `.` as part of a "say" command. But as part of a "snake"
command, it still prints `_dot_`.

Try saying "no space hello underscore world dot how underscore are underscore you"
