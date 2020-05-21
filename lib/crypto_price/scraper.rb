class CryptoPrice::Scraper
  # def self.scrape_coinmarketcap
  #   binding.pry
  #   #doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
  #   #doc.css("tbody.span").text.split("$").select{ |k| k.length > 0  }
  #   doc = Nokogiri::HTML(open("https://coinstats.app/?pagesize=50&page=1"))
  #   doc.css("td.data-cell.mobile-last").text.split("$").select{ |k| k.length > 0  }
  # end  

  def self.scrape_coins
    #binding.pry
    doc = Nokogiri::HTML(open("https://coindataflow.com/en"))
    names = doc.css("tbody tr td[3]").text.gsub(" ", "").split("\n").select{|k| k.length > 0}
    symbols = doc.css("tbody tr td[4]").text.gsub(" ", "").split("\n").select{|k| k.length > 0}
    prices = doc.css("tbody tr td[5]").text.gsub(" ", "").split("\n").select{|k| k.length > 0}
    changes = doc.css("tbody tr td[6]").text.gsub(" ", "").split("\n").select{|k| k.length > 0}
    marketcaps = doc.css("tbody tr td[12]").text.gsub(" ", "").split("\n").select{|k| k.length > 0}
    
    index = 0
    while index < names.length && index < symbols.length 
      symbol = symbols[index]
      name = names[index]
      price = prices[index]
      change = changes[index]
      marketcap = marketcaps[index]
      CryptoPrice::Coin.new(symbol, name, price,change, marketcap)
      index += 1
    end
    CryptoPrice::Coin.all
  end 
end 