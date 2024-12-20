last command: key(ctrl-k)
next command: key(ctrl-j)
to vim: key(alt-e)
(cd | seedee | seadee): insert("cd ")
(cd up | seedee up | seadee up): insert("cd ..")

(pipe to exargs | to exargs): insert(" | xargs -I{} ")
(pipe to exargs parallel | to exargs parallel): insert(" | xargs -P0 -I{} ")

ripgrep: insert("rg ")
