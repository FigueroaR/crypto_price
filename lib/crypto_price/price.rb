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
  
  def self.scrape_coinmarketcap
    doc = Nokogiri::HTML(open("https://www.coinbase.com/price"))
    #binding.pry 
    coin = self.new  
    #coin.symbol = doc.css("tbody.AssetTable__AssetTableBody-sc-3hlimn-0.bpsIBu div").first.css("h4.Header__StyledHeader-sc-1q6y56a-0").text
    coin.name = doc.css("tbody.AssetTable__AssetTableBody-sc-3hlimn-0.bpsIBu div").first.css("h4.Header__StyledHeader-sc-1q6y56a-0").text
    coin.index = doc.css("div.Flex-sc-12n1bmd-0 td").first.css("h4.Header__StyledHeader-sc-1q6y56a-0").text
    coin.changeSign = doc.css("div.PercentChange__Change-sc-1ukqm0f-0").first.css("span.PercentChange___Symbol-sc-1ukqm0f-1.fHPgbe").text 
    #coin.percent = doc.css("div.Flex-sc-12n1bmd-0 td").first.css("div.PercentChange__Change-sc-1ukqm0f-0.jDVmZV").text 
    coin.price = doc.css("h4.Header__StyledHeader-sc-1q6y56a-0.hZxUBM").text  #first.css("h4.Header__StyledHeader-sc-1q6y56a-0.hZxUBM.TextElement__Spacer-sc-18l8wi5-0.hpeTzd").text 
    binding.pry
    coin
  end 
end 