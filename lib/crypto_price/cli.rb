
class CryptoPrice::CLI
  
  def call 
    CryptoPrice::Scraper.scrape_coinlib
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
      CryptoPrice::Scraper.scrape_coinlib
      case input
      when "1"
        top_ten(CryptoPrice::Coin.all)
      when "2" 
        top_fifty(CryptoPrice::Coin.all)
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
    
    CryptoPrice::Coin.all.each.with_index(1) do |currency, i|
    
    #binding.pry
    
    individual(i, currency)

    3.times do
      puts " "

      end
    end 
  end

  def individual(i, currency)
    puts "
   #{i}.  Currency Symbol:     #{currency.symbol} 
         Name:               #{currency.name} 
         Current Price:      $#{currency.price} 
         24h Change:         #{currency.change}%
         MarketCap:          $#{currency.marketcap}"
    
  end

  def top_ten(info_array)
    info_array[0, 10].each.with_index do |k, index| 
      individual(index, k)
    end
    
  end
  
  def top_fifty(info_array)
    info_array[0, 50].each.with_index do |k, index|  #edit this not repeating info
      individual(index, k)
    end
  end

end 