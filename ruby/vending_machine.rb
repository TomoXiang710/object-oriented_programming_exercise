class VendingMachine
  attr_reader :drink_stock, :sales

  def initialize
    @drink_stock = []
    @sales = 0
    5.times do 
      @drink_stock << Drink.new('ペプシ', 150)
      @drink_stock << Drink.new('モンスター', 230) 
      @drink_stock << Drink.new('いろはす', 120)
    end
  end

  # 在庫を取得
  def stock_info(drink_name)
    @drink_stock.count { |drink| drink.name == drink_name }
  end

  # 購入できるかどうかを取得(購入できるかどうかは在庫がある && ジュース値段以上のチャージ残高がある)
  def can_purchase?(drink_name, suica) 
    drink = @drink_stock.find { |d| d.name == drink_name } #drink_nameに対応する名前のドリンクを@drink_stock配列から見つける
    stock_info(drink_name) > 0 && suica.balance >= drink.price # 引数で取り出した特定のジュースの値段
  end

  # 購入操作
  def purchase(drink_name, suica)
    if can_purchase?(drink_name, suica)
      # ジュースの在庫を減らす
      drink = @drink_stock.find { |d| d.name == drink_name }
      @drink_stock.delete(drink)

      # 売上金額を増やす
      @sales += drink.price

      # Suicaのチャージ残高を減らす
      suica.deduct(drink.price)

      # stock_info(drink_name)
    else
      raise 'なんか知らんけど購入できません、、、' 
    end
  end

  # 購入可能なドリンクのリストを取得
  # def drink_list
  #   # 購入可能かどうか？(true or false)
  #   # trueなら、
  #   # falseなら、
  #   return 'ペプシ', 'モンスター', 'いろはす'
  # end

  # 在庫を補充する
  def refill(drink_name, quantity)
    .times @drink_stock << Drink.new('ペプシ', 150)
  end

end