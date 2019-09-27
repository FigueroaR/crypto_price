class CryptoPrice::Price
  
  attr_accessor :index, :name, :price, :changeSign, :percent
  
  def self.now 
    self.scrape_array
    #binding.pry
  end 
  
  def self.scrape_array
    info = [] 
    info << self.scrape_coinmarketcap
    info 
  end 
  
  def self.scrape_coinbase
    doc = Nokogiri::HTML(open("https://www.coinbase.com/price"))
    coin = self.new  
    coin.name = doc.css("tbody.AssetTable__AssetTableBody-sc-3hlimn-0.bpsIBu div").first.css("h4.Header__StyledHeader-sc-1q6y56a-0").text
    coin.changeSign = doc.css("div.PercentChange__Change-sc-1ukqm0f-0").first.css("span.PercentChange___Symbol-sc-1ukqm0f-1.fHPgbe").text 
    coin.price = doc.css("td.AssetTableRow__Price-sc-1e35vph-5").first.css("h4.Header__StyledHeader-sc-1q6y56a-0").text
    coin
  end 
end 