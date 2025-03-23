(teemux | tux | tucks) <number>:
    user.tmux_pane(number)

(tuxo | tuxoh): user.tmux_pane(0)
(teemux | tux | tucks) first:
    user.tmux_pane(1)

(teemux | tux | tucks) search <user.text>:
    user.tmux_search(text)

(teemux | tux | tucks) goto <user.text>:
    user.tmux_search(text)
    sleep(50ms)
    key(enter)

(teemux | tux | tucks) look:
    key(ctrl-g)
    key(o)
