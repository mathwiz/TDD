class Environment

def initialize()
  @globals = {:h_limit=>10}
  @prompt = "ruby  shell> "
  @hist = []
end

def run(exp)
  unless exp.to_s.strip.empty?
    eval exp
    @hist.push exp
  end
end

def addExp(exp)
  @hist.push exp
end

def historyIndexFromList(offset)
  index = @hist.length - 1 - offset
  index < 0 ? @hist.length : index
end

def edit(offset, pat, sub)
  cmd = ''
  if @hist.length == 0
    print "Empty history\n"
  elsif not pat
    print "No pattern regex provided\n";
  elsif not sub
    print "No substitution regex provided\n";
  else
    index = historyIndexFromList (offset ? offset - 1 : 0)
    cmd = @hist[index]
    cmd.sub(pat,sub)
    puts cmd
  end
  cmd
end

def showHelp
  print "help - this list\n";
  print "history {n} - n lines of history (empty == all)\n";
  print "h - history #{@globals[:h_limit]}\n";
  print "!{n} - repeat nth previous command (! == !1)\n";
  print "!{n}e s/pat/sub/ - edit and run nth previous command using regexp\n";
end

def showHistory(limit)
  limit = limit == -1 ? @globals[:h_limit] : limit
  start = limit ? @hist.length - limit : 0
  start = start < 0 ? 0 : start
  it = start
  while it < @hist.length
    puts "#{@hist.length - it}  #{@hist[it]}"
    it+=1
  end
end

def history(offset)
  index = historyIndexFromList offset
  cmd = @hist[index]
  if @hist.length == 0
    puts "History empty"
  elsif cmd
    puts cmd
  else
    puts "Bad command: ! #{offset + 1}"
  end
  cmd
end

end #Environment


def loadFile(file)
  load file
  print "Loaded #{file}"
end

prompt = "ruby shell> "
e = Environment.new
print prompt

while exp = gets.chomp
  case exp
  when /^\s*history\s*$/
    e.showHistory 0
  when 'h'
    e.showHistory -1
  when /\s*history\s+(\d+)\s*$/
    e.showHistory $1.to_i
  when /^\s*!(\d*)e\s*s\/(.*)\/(.*)\/\s*$/
    exp = e.edit($1.to_i, $2, $3)
    e.run exp
  when '!'
    exp = e.history 0
    e.run exp
  when /!(\d+)\s*$/
    exp = e.history($1.to_i - 1)
    e.run exp
  when /^\s*help\s*/
    e.showHelp
  when /\s*load\s*\(\s*['"](\w+)['"]\s*\)/
    loadFile($1)
    e.addExp exp
  when 'quit'
    break
  when 'exit'
    break
  else
    e.run exp
  end
  print prompt
end
