require_relative '../lib/telegram_bot'
require_relative '../lib/inspire'

puts 'Hello! , Welcome to telegram bot that will inspire you'
puts '----------------------------------------------'
puts 'This is a bot to help you stay inspired by giving you inspirational quotes'
puts 'The bot can also keep you entertained by providing you with jokes'
puts 'This bolt will help you when you feeling unmotivated'

sleep(0.6)

puts '----------------------------------------------'
puts '...bot is now online... use ctrl-c to stop the bot'

Telebot.new
