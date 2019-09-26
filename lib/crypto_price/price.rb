class CryptoPrice::Price
  
  attr_accessor :symbol, :name, :price,:change, :marketcap, :volume, :circulatingSupply
  
  def self.now 
    self.scrape_array
    #binding.pry
  end 
  
  def self.scrape_array
    info = [] 
    info << self.scrape_coinmarketcap
    info 
  end 
  
  def self.scrape_coinmarketcap
    doc = Nokogiri::HTML(open("https://www.coinbase.com/price"))
    #puts " gets scraped from info here"
    #binding.pry 
    coin = self.new  
    #coin.name = doc.css("td.no-wrap").text.strip
    #coin.symbol = doc.css("span.currency-symbol").text #old website
    coin.name = doc.css("tbody.AssetTable__AssetTableBody-sc-3hlimn-0.bpsIBu div").first.css("h4.Header__StyledHeader-sc-1q6y56a-0").text
    binding.pry
    #coin.price = 
    #coin.chagen = 
    #coin.volume = 
    #coin.marketcap = 
    #coin.circulatingSupply = 
    #coin
  end 
end 