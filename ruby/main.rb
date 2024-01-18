require_relative 'suica'
require_relative 'drink'
require_relative 'vending_machine'

vm = VendingMachine.new
pepsi_stock = vm.stock_info('ペプシ') # ペプシの在庫を取得
puts "ペプシの在庫数：#{vm.stock_info('ペプシ')}本"
suica = Suica.new
suica.charge(500)
vm.purchase('ペプシ', suica)
vm.purchase('ペプシ', suica)
vm.purchase('いろはす', suica)
# puts "ペプシの在庫数：#{pepsi_stock}本"
puts "ペプシの在庫数：#{vm.stock_info('ペプシ')}本 モンスターの在庫数：#{vm.stock_info('モンスター')}本 いろはすの在庫数：#{vm.stock_info('いろはす')}本"
puts "チャージ残高：#{suica.balance}"
puts "売上金額：#{vm.sales}円"