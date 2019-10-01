class CryptoPrice::Coin
  
  
  attr_accessor :name, :price, :satoshi, :symbol, :volume, :marketcap, :change

  @@all = []

  def initialize(symbol, name, price, change , marketcap)
    @symbol = symbol
    @name = name
    @price = price
    @change = change
    @marketcap = marketcap
    @@all << self
  end

  def self.all
    @@all
  end
end