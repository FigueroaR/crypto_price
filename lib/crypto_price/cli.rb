
class CryptoPrice::CLI
  
  def call 
    #current_price
    #individual_price
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
      puts "|         -  1. Display top Crypto          -  2. Reload                 | "
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
      puts "|         -  1. Display top Crypto          -  2. Reload                 | "
      puts "|                                                                        |"
      puts "|                           -  3. exit                                   |"
      puts "|                                                                        |"
      puts "|________________________________________________________________________|"
      
      input = gets.strip
      case input
        #binding.pry
      when "1"
        current_price
      when "2" 
        current_price
      when "3"
        5.times do
          puts " "
        end
        puts "have a good day" 
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
  
  def individual_price
    5.times do
      puts " "
    end
    puts " links ind price"
    5.times do
      puts " "
    end
  end

  def current_price
    3.times do
      puts " "
    end

    puts "Cryptocurrenrcy prices Today"
    puts " "
    
    @prices = CryptoPrice::Price.now
    @prices.each.with_index(1) do |currency, i|
      puts "#{i}. #{currency.name} - #{currency.price} - 24h change(#{currency.changeSign})"
    #binding.pry

    3.times do
      puts " "
    end
    end 
  end
end 