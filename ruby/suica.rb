class Suica
  DEFAULT_BALANCE = 500

  attr_reader :balance

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def charge(amount)
    raise '100円未満はチャージできません' if amount < 100
    @balance += amount
  end
end

# 現在のチャージ残高を取得する
# suica = Suica.new
# suica.charge(1000)
#   puts "現在のチャージ残高は#{suica.balance}円です"

