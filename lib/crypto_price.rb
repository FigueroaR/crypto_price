require 'open-uri'
require 'nokogiri'
require 'pry'


require_relative "./crypto_price/version"
require_relative './crypto_price/price'
require_relative './crypto_price/cli'

module CryptoPrice
  class Error < StandardError; end
  # Your code goes here...
end
