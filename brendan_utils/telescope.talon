telescope buffers:
    key(escape)
    insert(" tb")

telescope quit:
    key(escape)
    sleep(150ms)
    key(q)

telescope (last | previous):
    key(escape)
    insert(" tr")

telescope refs:
    key(escape)
    insert(" rf")
