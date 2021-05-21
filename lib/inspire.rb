require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'telegram_bot'

class Inspire
  @val = nil

  def initialize
    @val = request_inspiration
  end

  def request_inspiration
    uri = URI('https://type.fit/api/quotes')
    data = Net::HTTP.get(uri)
    JSON.parse(data)
  end

  def any_inspiration
    @val = @val.sample
    @val
  end
end
