(telescope | telly | tele) (buf | buffers | bufs | buffs):
    key(escape)
    insert(" tb")

(telescope | telly | tele) quit:
    key(escape)
    sleep(150ms)
    key(q)

(telescope | telly | tele) (last | previous | prev | preev):
    key(escape)
    insert(" tr")

(telescope | telly | tele) refs:
    key(escape)
    insert(" rf")
