
class CryptoPrice::CLI
  
  def call 
    #current_price
    menu 
    #goodbye 
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
    puts "|                       ==================                               |"
    puts "|                        choose an option:                               |"
    puts "|                       ==================                               |"
    puts "  "

    
    input = gets.chomp
    while input != "0"
      puts  "        1. list all coins                          2. search by name   "
      case input
      when "1"
        "    -    puts all the coins here   -     "
      when "2" 
        "    -    able to search by name maybe with regex -      "
      end 
    #binding.pry
  end 
  
  #def current_price 
    #puts "Cryptocurrenrcy prices Today"
    #puts " "

      #@prices = CryptoPrice::Price.now
      #@prices.each.with_index(1) do |currency, i|
          #puts "#{i}. #{currency.name} - #{currency.price} - #{currency.change} - #{currency.volume} - #{currency.circulatingSupply} -     #{currency.marketcap} "
     
  #end 
end 