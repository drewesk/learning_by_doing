# top level comment
class CashRegister
  attr_reader :total

  def initialize
    @total = 0.0
  end

  def purchase(amount)
    @total += amount
  end

  def pay(amount_tendered)
    @total -= amount_tendered
    if @total.positive?
      puts "Your you owe #{@total}"
    elsif @total.zero?
      puts 'Your change is 0.0, all paid up.'
    else
      puts "Your change is #{-@total}"
      @total = 0.0
    end
  end
end
