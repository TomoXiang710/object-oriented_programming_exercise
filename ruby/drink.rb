class Drink
  attr_reader :name, :price

  def initialize(name, price)
    @name = name 
    @price = price
  end
end


# # 初期状態で、ペプシ(150円)を5本格納している。(繰り返し処理)
# # 格納　= 配列に渡す
# def initialize
# # 空の配列を作成
# drinks = []

# # 作成したインスタンスを5つ配列drinksに格納
# 5.times do 
#   drinks << Drink.new
# end

# puts "現在のドリンクの数: #{drinks.length}"