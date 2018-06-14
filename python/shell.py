import re

GLOBALS = {'h_limit':10}
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
    re.sub(pat, sub, cmd)
    print(cmd)
    print
  return cmd


def showHelp():
  print("help - this list\n")
  print("history {n} - n lines of history (empty == all)\n")
  print("h - history $GLOBALS{h_limit}\n")
  print("!{n} - repeat nth previous command (! == !1)\n")
  print("!{n}e s/pat/sub/ - edit and run nth previous command by replacing pat with sub\n")


def showHistory(limit):
  start = (len(history) - limit) if limit else 0
  start = 0 if start < 0  else start
  it = start
  while it < len(history):
    print(len(history) - it, " ", history[it])
    it += 1


def execHistory(offset):
  index = historyIndexFromList (offset)
  cmd = history[index]
  if len(history) == 0:
    print("History empty")
    print
  elif cmd:
    print(cmd)
    print
  else:
      print("Bad command: !")
      print(offset + 1)
      print

  return cmd


def load(file):
  f = open(file)
  source = f.read()
  exec(source)
  print("Loaded ", file)


# Execute loop
while True:
    exp = input(prompt)
    if re.search(r'^\s*history\s*$', exp):
        showHistory()
    elif exp == 'h':
        showHistory(GLOBALS['h_limit'])
    elif re.match(r'\s*history\s+(\d+)\s*$', exp):
        m = re.match(r'\s*history\s+(\d+)\s*$', exp)
        showHistory(m.group(1))
    elif re.match(r'^\s*!(\d*)e\s*s\/(.*)\/(.*)\/\s*$', exp):
        m = re.match(r'^\s*!(\d*)e\s*s\/(.*)\/(.*)\/\s*$', exp)
        exp = edit (m.group(1), m.group(2), m.group(3))
        run(exp)
    elif exp == '!':
        exp = execHistory(0)
        run(exp)
    elif re.match(r'!(\d+)\s*$', exp):
        m = re.match(r'!(\d+)\s*$', exp)
        exp = execHistory(int(m.group(1)) - 1)
        run(exp)
    elif re.search(r'^\s*help\s*', exp):
        showHelp()
    elif re.match(r'\s*load\s+(\S+)\s*', exp):
        m = re.match(r'\s*load\s+(\S+)\s*', exp)
        load (m.group(1))
        history.append(exp)
    elif exp == 'quit' or exp == 'exit':
        break
    else:
        run(exp)

