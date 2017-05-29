
def cheat_sheet
  puts "cheat sheet 
  1: command line
  2: Search
  3: Exit"

  answer = gets.chomp.to_i 

  if(answer == 1)
    command_line
  end

  if(answer == 2)
    search
  end
  
  if(answer == 3) 
    exit
  end
  
  cheat_sheet
end
 
def command_line
    puts "command line
    1: cp
    2: mv
    3: cd
    4: main menu"

    command_line_answer = gets.chomp.to_i #comparisons. called a case statement
    case command_line_answer
      when 1
        puts `man cp` 
      when 2
        puts `man mv`
      when 3
        puts `man cd`
      when 4
        cheat_sheet 
      else
        puts "There are only four choices yo."
        command_line # calling other methods names makes it loop, and this is called recursion.
      end
end 

def search
  puts "Please input something you want the man page to do."

  search_answer = gets.chomp
  puts `man #{search_answer}`
end

cheat_sheet