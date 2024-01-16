require_relative 'suica'
require_relative 'drink'
require_relative 'vending_machine'

# 現在のチャージ残高を取得する
suica = Suica.new
suica.charge(1000)
  puts "現在のチャージ残高は#{suica.balance}円です"

vending_machine = VendingMachine.new

vending_machine.drink_stock.each do |drink|
  puts "この自販機には#{drink.name}があります"
end

# puts "この自販機には#{vending_machine.drink_stock.name}が#{vending_machine.drink_stock.size}本あります"

# puts "#{vending_machine.drink_stock.name}"













