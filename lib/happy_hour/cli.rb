class HappyHour::CLI

  def call
    puts "*************************************"
    puts ""
    puts "Welcome! Let's get your Happy on!!!"
    puts "-------------------------------------"
    puts "-------------------------------------"
    HappyHour::Bar.scrape_bars
    bar_list
    more_info
    goodbye
  end


   def bar_list
     HappyHour::Bar.all.each.with_index(1) do |bar, i|
     puts "#{i}. #{bar.name}"
        #binding.pry
     end
   end

   def more_info
     input = nil
      while input != 'exit'
        puts ""
        puts "Enter number for details for bar of choice:"
        puts ""
        input = gets.strip.downcase
       if input.to_i > 0 && input.to_i <= HappyHour::Bar.all.length
          bar = HappyHour::Bar.all[input.to_i -1]
        puts ""
        puts "#{bar.name}"
        puts "************************"
        puts "#{bar.description}"
        puts "************************"
        puts ""
        puts "For main list of bars, type 'list', to leave, type 'exit'."
        elsif input == 'list'
          bar_list
        elsif input == 'exit'

        else
          puts ""
          puts "Oops! Think you pressed the wrong number."
        #binding.pry
       end
     end
    end

    def goodbye
      puts ""
      puts "Thanks for visiting! Come back soon!!!"
      puts ""
    end
  end
