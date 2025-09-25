class LogLineParser
  
  def initialize(line)
    @line = line
  end

  def message
    puts @line.split(': ')[1].strip
  end
  def log_level
    new = @line.split(']')[0]
    puts new.split('[')[1].downcase.strip
  end
  def reformat
    sub = @line.gsub("[","(")
    subs = sub.gsub("]",")").split(': ')
    s = subs[1]
    u = subs[0].downcase
    @line = s +" "+ u
    puts @line.strip
    
    
  end
  end
LogLineParser.new('[ERROR]:  Invalid operation').message
LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
LogLineParser.new('[ERROR]: Invalid operation').log_level
LogLineParser.new('[INFO]: Operation completed').reformat