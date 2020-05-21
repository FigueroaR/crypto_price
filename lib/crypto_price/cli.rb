
class CryptoPrice::CLI
  
  def call 
    
    menu 
  end 
  
  def menu
        5.times do
            puts " "
        end
        puts "                 ================================                        "
        puts "                 Current Crypto-Currencies Prices                        "
        puts "                 ================================                         "
        puts "                                                                         "
        puts "|========================================================================|"
        puts "|                      Today's top Crypto!                               |"
    
    input = nil 
    while input != "exit"
        puts "|========================================================================|"
        puts "|                                                                        |"
        puts "|                                                                        |"
        puts "|                     Choose an option Number:                           |"
        puts "|                                                                        |"
        puts "|                      when done type 'exit'                             |"
        puts "|                       ___________________                              |"
        puts "|                                                                        |"
        puts "|                                                                        |"
        puts "|                                                                        |"
        puts "|         -  1. Top 10 coins         -  2. Top 50 Coins                  | "
        puts "|                                                                        |"
        puts "|                                                                        |"
        puts "|                                                                        |"
        puts "|________________________________________________________________________|"
        3.times do
          puts " "
          end
        
      input = gets.strip
      CryptoPrice::Scraper.scrape_coins
      case input
        when "1"
          top_ten(CryptoPrice::Coin.all)
          input = gets.strip
          c = CryptoPrice::Coin.all[input.to_i]
          show_info(input, c)
        when "2" 
          top_fifty(CryptoPrice::Coin.all)
          input = gets.strip
          d = CryptoPrice::Coin.all[input.to_i]
          show_info(input, d)
        when "exit"
            5.times do
              puts " "
            end
          puts "Have a good day!" 
            5.times do
              puts " "
            end
        else 
            5.times do
              puts " "
              end
          puts "Type 'exit' when you are done!" 
            5.times do
              puts " "
              end
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
    puts "   ----------------------------------------------------------------"
    puts "                                                                "
    puts "                   You chose:     #{index}         "
    puts "              
                                  Name:     #{coin.name} 
                       Currency Symbol:     #{coin.symbol}
                         Current Price:     #{coin.price} 
                            24h Change:     #{coin.change}%
                             MarketCap:     #{coin.marketcap}"
    puts "                                                                "
    puts "   ----------------------------------------------------------------"                      
    2.times do
            puts " "
            end                      
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