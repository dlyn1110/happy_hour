class HappyHour::CLI

  def call
    puts "Welcome To the Best Happy Hour Bar Source That Brooklyn Has To Offer!!!"
    puts "----------------------------------------"
    puts "For main list of bars, type 'list', to leave type 'exit'."
    puts ""
    HappyHour::Bar.scrape_bars
    bar_list
    more_info
    goodbye
  end


   def bar_list
     HappyHour::Bar.all.each.with_index(1) do |bar, i|
     puts "#{i}. #{bar.name}"
     end
   end

   def more_info
     input = nil
      while input != 'exit'
        input = gets.strip.downcase

       if @input.to_i.between?(1, HappyHour::Bar.all.length)
       # after input bar title and description displays
        puts "#{bar.name}"
        puts "#{bar.descrption}"
        puts "For main list of bars, type 'list', to leave type 'exit'."
        elsif input == 'list'
          bar_list
        else input == 'exit'
       end
     end
    end

    def goodbye
      puts "Thanks for visiting! Come back soon!!!"
    end
  end
