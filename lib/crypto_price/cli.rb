
class CryptoPrice::CLI
  
  def call 
    menu 
  end 
  
  def menu
        puts "|                 ================================                       |"
        puts "|                 Current Crypto-Currencies Prices                       |"
        puts "|                 ================================                       |"
        puts "|                                                                        |"
        puts "|========================================================================|"
        puts "|                      Today's top Crypto!                               |"
        puts "|========================================================================|"
        puts "|                                                                        |"
        puts "|                                                                        |"
        puts "|                     Choose an option Number:                           |"
        puts "|                       ___________________                              |"
        puts "|                                                                        |"
        puts "|                                                                        |"
        puts "|                                                                        |"
        puts "|         -  1. Top 10 coins         -  2. Top 50 Coins                  | "
        puts "|                                                                        |"
        puts "|                           -  3. exit                                   |"
        puts "|                                                                        |"
        puts "|________________________________________________________________________|"
        5.times do
          puts " "
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
        puts "|         -  1. Top 10 coins         -  2. Top 50 Coins                  | "
        puts "|                                                                        |"
        puts "|                           -  3. exit                                   |"
        puts "|                                                                        |"
        puts "|________________________________________________________________________|"
        
      input = gets.strip
      case input
      when "1"
        top_ten
      when "2" 
        top_fifty
      when "3"
          5.times do
            puts " "
          end
        puts "Have a good day" 
          5.times do
            puts " "
          end
      else 
          5.times do
            puts " "
            end
        puts "Try a valid number" 
      end 
    end
  end 

  def current_price
    3.times do
      puts " "
    end

    puts "Cryptocurrenrcy prices Today"
    puts " "
    
    CryptoPrice::Scraper.scrape_coinlib
    CryptoPrice::Coin.all.each.with_index(1) do |currency, i|
      puts "
   #{i}.  Currency Symbol:     #{currency.symbol} 
         Name:               #{currency.name} 
         Current Price:      $#{currency.price} 
         24h Change:         #{currency.change}%
         MarketCap:          $#{currency.marketcap}"
    #binding.pry

    3.times do
      puts " "

      end
    end 
  end

  def top_ten 
    current_price.all[1, 10].each do |ten| 
      puts ten 
    end
  end
  
  def top_fifty
    current_price[1, 50]
  end

end 