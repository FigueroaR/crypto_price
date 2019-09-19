class CryptoPrice::Price
  
  attr_accessor :name, :price,:change, :marketcap, :volume, :circulatingSupply
  
  def self.now 
    self.scrape_coinmarketcap
  
  end 
  
  def self.scrape_coinmarketcap
    info = [] 
    info << self.scrape_coinmarketcap
    info 
  end 
  
  def self.scrape_coinmarketcap
    doc = Nokogiri::HTML(open(https://coinmarketcap.com))
    
    price = self.new 
    price.name = 
    price.price = 
    price.chagen = 
    price.volume = 
    price.marketcap = 
    price.circulatingSupply = 
    
    price
  end 
end 