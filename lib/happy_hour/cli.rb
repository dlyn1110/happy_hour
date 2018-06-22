class HappyHour::CLI

  def call
    greeting
    options
    more_info
    goodbye
  end

 def greeting
   puts "Welcome To the Best Happy Hour Bar Source That Brooklyn Has To Offer!!!"
   puts ""
   puts "Please choose numbers 1-7 for desired neighborhood:"
   puts ""
 end

 def options
   puts "1. Bed-Stuy"
   puts "2. Bushwick"
   puts "3. Cobble Hill/Boerum Hill/Carroll Gardens"
   puts "4. Dumbo/Brooklyn Heights"
   puts "5. Greenpoint"
   puts "6. Park Slope"
   puts "7. Williamsburg"
   puts ""

  end

   def more_info

     input = gets.strip.downcase
       if input == "1"
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
       elsif input == "exit"
         puts "Please choose number from list"
      end
      
  end

    def goodbye
      puts "Thanks for visiting! Come back soon!!!"
    end

  end
