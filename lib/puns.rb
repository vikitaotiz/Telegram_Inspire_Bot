require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'telegram_bot'

class Pun
  @val = nil

  def initialize
    @val = request_pun
  end

  def request_pun
    uri = URI('https://official-joke-api.appspot.com/random_joke')
    data = Net::HTTP.get(uri)
    JSON.parse(data)
  end
end
