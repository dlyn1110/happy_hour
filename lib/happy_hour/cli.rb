class HappyHour::CLI

  def call

    HappyHour::Bar.scrape_bars
    puts "Welcome To the Best Happy Hour Bar Source That Brooklyn Has To Offer!!!"
    puts "----------------------------------------"
    puts "Please enter number for Happy Hour Bar of choice:"
    puts ""
    main_menu
    goodbye
  end


   def main_menu
     HappyHour::Bar.all.each.with_index
     puts "#{i}. #{bar.name}"
   end

  def more_info
   input = nil
      while input != 'exit'
       puts ""
       input = gets.strip.downcase

       if input =="1"
         puts " List of Bed-Stuy Bars"
       elsif input == "2"
         puts "List of Bushwick Bars"
       elsif input == "3"
         puts "List Cobble Hill/Boerum Hill/Carroll Gardens Bars"
       elsif input == "4"
         puts "List of Dumbo/Brooklyn Heights Bars"
       elsif input == "5"
         puts "List of Greenpoint Bars"
       elsif input == "6"
         puts "List of Park Slope Bars"
       elsif input == "7"
         puts "List of Williamsburg Bars"
       elsif input == "menu"
         main_menu
       else input == 'exit'
         break
    end
   end
  end

    def goodbye
      puts "Thanks for visiting! Come back soon!!!"
    end
  end
