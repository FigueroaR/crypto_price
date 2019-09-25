
class CryptoPrice::CLI
  
  def call 
    #current_price
    menu 
    #individual_price
  end 
  
  def menu
      puts "|                 ================================                       |"
      puts "|                 Current Crypto-Currencies Prices                       |"
      puts "|                 ================================                       |"
      puts "|                                                                        |"
      puts "|========================================================================|"
      puts "| Search through all Cryptocurrencies and find the information you want! |"
      puts "|========================================================================|"
      puts "|                                                                        |"
      puts "|                                                                        |"
      puts "|                     Choose an option Number:                           |"
      puts "|                       ___________________                              |"
      puts "|                                                                        |"
      puts "|                                                                        |"
      puts "|                                                                        |"
      puts "|         -  1. Search by name           -  2. top 50                    | "
      puts "|                                                                        |"
      puts "|                           -  3. exit                                   |"
      puts "|                                                                        |"
      puts "|________________________________________________________________________|"
      5.times do
        puts "       "
      end

    
    input = nil 
    while input != "3"
      puts "|========================================================================|"
      puts "|                                                                        |"
      puts "|                                                                        |"
      puts "|                     Choose an option Number:                           |"
      puts "|                       ___________________                              |"
      puts "|                                                                        |"
      puts "|                                                                        |"
      puts "|                                                                        |"
      puts "|         -  1. Search by name           -  2. top 50                    | "
      puts "|                                                                        |"
      puts "|                           -  3. exit                                   |"
      puts "|                                                                        |"
      puts "|________________________________________________________________________|"
      
      input = gets.strip
      case input
        #binding.pry
      when "1"
        individual_price
        #puts "gets the top coin from list"
      when "2" 
        #current_price
        puts "top 50 coins here "
      when "3"
        puts "have a good day" 
      else 
        puts "Try a  valid key" 
      end 
    end
  end 
  
  def individual_price
    puts " links ind price"
  end

  #def current_price 
    #puts "Cryptocurrenrcy prices Today"
    #puts " "
     # @prices = CryptoPrice::Price.now
      #@prices.each.with_index(1) do |currency, i|
          #puts "#{i}. #{currency.name} - #{currency.price} - #{currency.change} - #{currency.volume} - #{currency.circulatingSupply} -     #{currency.marketcap} "
     
  #end
  
  

  
end 

