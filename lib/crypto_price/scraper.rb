class CryptoPrice::Scraper
  def self.scrape_coinmarketcap
    #binding.pry
    #doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
    #doc.css("tbody.span").text.split("$").select{ |k| k.length > 0  }
    doc = Nokogiri::HTML(open("https://coinstats.app/?pagesize=50&page=1"))
    doc.css("td.data-cell.mobile-last").text.split("$").select{ |k| k.length > 0  }
  end

  def self.scrape_coinlib
    doc = Nokogiri::HTML(open("https://coinlib.io/coins"))
    prices = self.scrape_coinmarketcap
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