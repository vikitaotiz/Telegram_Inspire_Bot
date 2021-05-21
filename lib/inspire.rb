require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'telegram_bot.rb'

class Inspire
  @val = nil

  def initialize
    @val = request_inspiration
  end

  def request_inspiration
    uri = URI('https://type.fit/api/quotes')
    data = Net::HTTP.get(uri)
    response = JSON.parse(data)
    response
  end

  def any_inspiration
    @val = @val.sample
    @val
  end
end