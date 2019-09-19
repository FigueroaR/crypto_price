class CryptoPrice::Price
  
  attr_accessor :name, :price,:change, :marketcap, :volume, :circulatingSupply
  
  def self.now 
    self.scrape_coinmarketcap
  
  end 
  
  def self.scrape_coinmarketcap
    info = [] 
    
    
end 