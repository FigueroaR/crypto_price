class CryptoPrice::Scraper
  def self.scrape_coinbase
    doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
    doc.css("a.price").text.split("$").select{ |k| k.length > 0  }
  end

  def self.scrape_coinlib
    doc = Nokogiri::HTML(open("https://coinlib.io/coins"))
    prices = self.scrape_coinbase
    names = doc.css("div.tbl-currency").text.split("\n").select{ |k| !k.include?("[") && k.length > 0  }
    symbols = doc.css("span.tbl-coin-abbrev").text.gsub("]", "").split("[").select{ |k| k.length > 0  }
    changes = doc.css("span.tbl-price.pr-change").text.split("%").select{ |k| k.length > 0  }
    marketcaps = doc.css("span.mob-info-value").text.split("$").select{ |k| k.length > 0  }
    #binding.pry
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