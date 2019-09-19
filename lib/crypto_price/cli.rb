class CryptoPrice::CLI
  
  def call 
    puts "Current Crypto-Currencies Prices"
    current_price
    options 
    goodbye 
  end 
  
  def current_price 
  puts "Cryptocurrenrcy prices Today"
  puts " "
  puts " Search through all Cryptocurrencies and find the information you want! "
  
  @prices = CryptoPrice::Price.now
  @prices.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.name} - #{deal.price} - #{deal.change} - #{deal.volume} - #{deal.circulatingSupply} - #{deal.marketcap} "
    end 
  end 
  
  def options
    input = nil 
    while input != "end" 
    
    
    
  end 
  
end 