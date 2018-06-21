class HappyHour::CLI

  def call
    greeting
    options
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

  end
