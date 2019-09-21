class CryptoPrice::CLI
  
  def call 
    puts "Current Crypto-Currencies Prices"
    #current_price
    menu 
    #goodbye 
  end 
  
  
  def menu
    puts " Search through all Cryptocurrencies and find the information you want! "
    input = gets.strip
    case input
    when "1"
      "puts this an option"
    end 
  end 
  
  def current_price 
    puts "Cryptocurrenrcy prices Today"
    puts " "
   
        
      #@prices = CryptoPrice::Price.now
      #@prices.each.with_index(1) do |currency, i|
          #puts "#{i}. #{currency.name} - #{currency.price} - #{currency.change} - #{currency.volume} - #{currency.circulatingSupply} -     #{currency.marketcap} "
     
  end 
  
  
  
end 