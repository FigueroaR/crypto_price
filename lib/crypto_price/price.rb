class CryptoPrice::Price
  
  attr_accessor :name, :price,:change, :marketcap, :volume, :circulatingSupply
  
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
    #doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
    puts "scraped info here"
    #binding.pry 
     
    #price = self.new 
    #binding.pry 
    #price.name = css(".currency-name-container")
    #price.price = 
    #price.chagen = 
    #price.volume = 
    #price.marketcap = 
    #price.circulatingSupply = 
    #price
  end 
end 