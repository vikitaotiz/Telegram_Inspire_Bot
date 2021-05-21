require 'telegram/bot'
require_relative 'inspire'
require_relative 'puns'

# rubocop:disable Metrics/MethodLength
# rubocop:disable Layout/LineLength

class Telebot
  def initialize
    token = '1808169634:AAHMhG67n3uTeqyM5xM5gg6Ts6WgeI8f8Pg'

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id,
            text: "Hello, #{message.from.first_name} , welcome to Vikitaotiz bot created by Victor,
            the chat bot is to keep you inspired and entertained. Use  /start to start the bot,
            /stop to end the bot, /inspire to get a diffrent motivational quote everytime you request
            for it or /joke to get a joke everytime you request for it")
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
        when '/inspire'
          values = Inspire.new
          value = values.any_inspiration
          bot.api.send_message(chat_id: message.chat.id, text: (value['text']).to_s, date: message.date)
          bot.api.send_message(chat_id: message.chat.id, text: (value['author']).to_s, date: message.date)

        when '/joke'
          values = Pun.new
          value = values.request_pun
          bot.api.send_message(chat_id: message.chat.id, text: (value['setup']).to_s, date: message.date)
          bot.api.send_message(chat_id: message.chat.id, text: (value['punchline']).to_s, date: message.date)
        else
          bot.api.send_message(chat_id: message.chat.id,
              text: "Invalid entry, #{message.from.first_name}, you need to use  /start,  /stop , /motivate or /joke")
        end
      end
    end
  end
end

# rubocop:enable Metrics/MethodLength
# rubocop:enable Layout/LineLength
