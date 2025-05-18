preev command: key(ctrl-k)
next command: key(ctrl-j)
to vim: key(alt-e)

(pipe to exargs | to exargs): insert(" | xargs -I{} ")
(pipe to exargs parallel | to exargs parallel): insert(" | xargs -P0 -I{} ")

touch: insert("touch ")
ripgrep: insert("rg ")
bat: insert("bat ")
cat: insert("cat ")
(said | sed):
    insert('sed -i "s/"')
    key(left)
change dir: insert("cd ")
change dir up: insert("cd ..\n")
fuzzy find: insert("fzf ")

date: insert("date\n")

switch <user.letter>$: user.switch(letter)
long switch <user.text>$: user.long_switch(text)

git everything: insert("git_everything\n")
stash and keep: insert("stash_and_keep\n")

remove: insert("rm ")
force remove: insert("rm -rf ")
