class VendingMachine
  attr_reader :drink_stock

  def initialize
    @drink_stock = {}
    @sales = 0
    5.times do
      # @drink_stock << Drink.new('ペプシ', 150)
      @drink_stock << Drink.new()
      @drink_stock << Drink.new('モンスター', 230) 
      @drink_stock << Drink.new('いろはす ', 120) 
    end
  end


  # 在庫を取得(どのジュースが何本か)
  def get_stock

  end
  puts "ペプシ:#{}本、モンスター:#{}本、いろはす:#{}本"

  #　在庫を減らす
  def reduce_stock

  end
  
  #　ジュースの名前をキーに、

  # ハッシュでキーと値で取り出す
  DRINK_LIST = { 'ペプシ': 150, 'モンスター': 230, 'いろはす': 120 }


  # ジュース値段以上のチャージ残高がある場合、以下の動作をする
  # if ジュース値段 <= Suicaのチャージ残高
  if drink.price 
  # 自販機はジュースの在庫を減らす


  # 在庫を補充
  def refill(name, )



  # 売り上げ金額を取得


end














