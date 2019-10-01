class CryptoPrice::Scraper
  
  
  
  def self.now 
    self.scrape_array
  end 
  
  def self.scrape_array
    info = [] 
    info << self.scrape_coinlib 
    info <<  self.scrape_coinbase
    info
  end 
  
  def self.scrape_coinbase
    doc = Nokogiri::HTML(open("https://coinbase.com/prices"))
    doc.css("td.AssetTableRow__Price-sc-1e35vph-5").text.split("$").select{ |k| k.length > 0  }
    #binding.pry
  end

  def self.scrape_coinlib
    doc = Nokogiri::HTML(open("https://coinlib.io/coins"))
    prices = self.scrape_coinbase
    
    names = doc.css("div.tbl-currency").text.split("\n").select{ |k| !k.include?("[") && k.length > 0  }
    symbols = doc.css("span.tbl-coin-abbrev").text.gsub("]", "").split("[").select{ |k| k.length > 0  }
    #binding.pry
    #coin.price = doc.css("span.tbl-price.price").text.split("%")
    #coin.satoshi = doc.css("span.tbl-price.small").text.split("฿")
    #coin.volume = doc.css("span.mob-info-value#Volume").text
    marketcaps = doc.css("span.mob-info-value").text.split("$")
    index = 0
    while index < names.length && index < symbols.length 
      symbol = symbols[index]
      name = names[index]
      price = prices[index]
      #change = changes[index]
      marketcap = marketcaps[index]

      CryptoPrice::Coin.new(symbol, name, price, marketcap)
      
      index += 1
      
    end
    
    CryptoPrice::Coin.all
    
  end 
end 

  #info = doc.css("div.container")
  #name = info.css().text
  #symbol = info.css()
  #price = info.css().first.text
  #volume = info.
  #rank = info.css("span.tbl-rank").text
  #marketcap = info.
  #binding.pry