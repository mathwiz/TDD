import re

GLOBALS = {'h_limit': 10}
regex_load = r'\s*load\s+(\S+)\s*'
regex_repeat_digit = r'!(\d+)\s*$'
regex_edit = r'^\s*!(\d*)e\s*s\/(.*)\/(.*)\/\s*$'
regex_history_digit = r'\s*history\s+(\d+)\s*$'

prompt = "\npython shell> "

exp = ''
history = []


def run(exp):
    if exp:
        eval(exp)
        history.append(exp)


def historyIndexFromList(offset):
    index = len(history) - 1 - offset
    return len(history) if index < 0 else index


def edit(offset, pat, sub):
    cmd = ''
    if len(history) == 0:
        print("Empty history\n")
    elif not pat:
        print("No pattern regex provided\n")
    elif not sub:
        print("No substitution regex provided\n")
    else:
        index = historyIndexFromList((offset - 1) if offset else 0)
        cmd = history[index]
        cmd = re.sub(pat, sub, cmd)
        print(cmd)
    return cmd


def showHelp():
    print("help - this list")
    print("history {n} - n lines of history (empty == all)")
    print("h - history ", GLOBALS['h_limit'])
    print("!{n} - repeat nth previous command (! == !1)")
    print("!{n}e s/pat/sub/ - edit and run nth previous command by replacing pat with sub")


def showHistory(limit):
    start = (len(history) - limit) if limit else 0
    start = 0 if start < 0 else start
    it = start
    while it < len(history):
        print(len(history) - it, " ", history[it])
        it += 1


def execHistory(offset):
    index = historyIndexFromList(offset)
    cmd = history[index]
    if len(history) == 0:
        print("History empty")
    elif cmd:
        print(cmd)
    else:
        print("Bad command: !", offset + 1)

    return cmd


def load(file):
    f = open(file)
    source = f.read()
    exec(source)
    print("Loaded ", file)


# Execute loop
while True:
    exp = input(prompt).strip()
    if re.search(r'^\s*history\s*$', exp):
        showHistory()
    elif exp == 'h':
        showHistory(GLOBALS['h_limit'])
    elif re.search(regex_history_digit, exp):
        m = re.match(regex_history_digit, exp)
        showHistory(int(m.group(1)))
    elif re.search(regex_edit, exp):
        m = re.match(regex_edit, exp)
        exp = edit(int(m.group(1)), str(m.group(2)), str(m.group(3)))
        run(exp)
    elif exp == '!':
        exp = execHistory(0)
        run(exp)
    elif re.search(regex_repeat_digit, exp):
        m = re.match(regex_repeat_digit, exp)
        exp = execHistory(int(m.group(1)) - 1)
        run(exp)
    elif re.search(r'^\s*help\s*', exp):
        showHelp()
    elif re.search(regex_load, exp):
        m = re.match(regex_load, exp)
        load(m.group(1))
        history.append(exp)
    elif exp == 'quit' or exp == 'exit':
        break
    else:
        run(exp)
