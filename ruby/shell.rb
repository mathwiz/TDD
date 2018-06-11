globals = {:h_limit=>10}
prompt = "ruby  shell> "
history = []

def run(exp)
  unless exp.to_s.strip.empty?
    eval exp
    history.push exp
  end
end


print prompt

while exp = gets.chomp
  case exp
  when /^\s*history\s*$/
    showHistory
  when 'h'
    showHistory globals[:h_limit]
  when /\s*history\s+(\d+)\s*$/
    showHistory $1
  when /^\s*!(\d*)e\s*s\/(.*)\/(.*)\/\s*$/
    exp = edit($1, $2, $3)
    run exp
  when '!'
    exp = history 0
    run exp
  when /!(\d+)\s*$/
    exp = history($1 - 1)
    run exp
  when /^\s*help\s*/
    showHelp
  when /\s*load\s*\(\s*['"](\w+)['"]\s*\)/
    loadFile($1)
    history.push exp
  when 'quit'
    break
  when 'exit'
    break
  else
    run exp
  end
  print prompt
end



def historyIndexFromList(offset)
  index = history - 1 - offset
  index < 0 ? history.length : index
end

def edit(offset, pat, sub)
  cmd = ''
  if history.length == 0
    print "Empty history\n"
  elsif not pat
    print "No pattern regex provided\n";
  elsif not sub
    print "No substitution regex provided\n";
  else
    index = historyIndexFromList (offset ? offset - 1 : 0)
    cmd = history[index]
    cmd.sub(pat,sub)
    puts cmd
  end
  cmd
end

def showHelp
  print "help - this list\n";
  print "history {n} - n lines of history (empty == all)\n";
  print "h - history #{globals[:h_limit]}\n";
  print "!{n} - repeat nth previous command (! == !1)\n";
  print "!{n}e s/pat/sub/ - edit and run nth previous command using regexp\n";
end

def showHistory(limit)
  start = limit ? history.length - limit : 0
  start = start < 0 ? 0 : start
  it = start
  while it < history.length
    puts "#{history.length - it}  #{history[it]}"
    it+=1
  end
end

def history(offset)
  index = historyIndexFromList offset
  cmd = history[index]
  if history.length == 0
    puts "History empty"
  elsif cmd
    puts cmd
  else
    puts "Bad command: ! #{offset + 1}"
  end
  cmd
end

def loadFile(file)
  load file
  print "Loaded #{file}"
end
