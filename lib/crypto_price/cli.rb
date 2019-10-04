
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
    
    #binding.pry
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
      #method(input)
      CryptoPrice::Scraper.scrape_coinlib
      case input
      when "1"
        top_ten(CryptoPrice::Coin.all)
        input = gets.strip
        c = CryptoPrice::Coin.all[input.to_i]
        show_info(input, c)
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

  def individual(index, coin)
    2.times do
      puts " "
      end
    puts "
           
    #{index}. Symbol:    #{coin.symbol} 
         Name:    #{coin.name} "
    2.times do
      puts " "
      end
  end

  def show_info(index, coin)
    2.times do
      puts " "
      end
    puts "----------------------------------------------------------------"
    puts "                You chose:     #{index}         "
    puts "              
                               Name:     #{coin.name} 
                    Currency Symbol:     #{coin.symbol}
                      Current Price:     $#{coin.price} 
                         24h Change:     #{coin.change}%
                          MarketCap:     $#{coin.marketcap}"
    puts "----------------------------------------------------------------"                      
    2.times do
            puts " "
            end                      
  end

  def top_ten(info_array)
    info_array[0, 10].each.with_index do |k, index| 
      individual(index, k)
      #show_info(index, k )
    end
    
  end
  
  def top_fifty(info_array)
    info_array[0, 50].each.with_index do |k, index|  #edit this not repeating info
      individual(index, k)
    end
  end

end 