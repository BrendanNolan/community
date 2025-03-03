preev command: key(ctrl-k)
next command: key(ctrl-j)
to vim: key(alt-e)
(seedee | seadee): insert("cd ")
(seedee up | seadee up): insert("cd ..")

(pipe to exargs | to exargs): insert(" | xargs -I{} ")
(pipe to exargs parallel | to exargs parallel): insert(" | xargs -P0 -I{} ")

ripgrep: insert("rg ")

switch <user.letter>$: user.switch(letter)
long switch <user.text>$: user.long_switch(text)
