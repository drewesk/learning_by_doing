#!/usr/bin/env ruby

# This is the CashRegister Class
class CashRegister
  def initialize
    @total = 0.00
  end

  def total
    @total = 0.00
    puts "The cash register balance is $#{round(@total)}"
  end

  def round(total)
    format('%.2f', total)
  end

  def purchase(item)
    @total += item
    puts "You just purchased an item for $#{round(item)}. \b
What a deal! Your balance is $#{round(@total)}."
  end

  def pay(amount)
    @total -= amount

    if @total >= 0
      puts "You payed $#{amount}. Your balance is $#{round(@total)}."
    else @total < 0
      puts "You payed $#{amount}. Your change is $#{round(-@total)}."
    end
  end
end

register = CashRegister.new
register.total
register.purchase(22.00)
register.pay(15)
register.purchase(5.00)
register.pay(2)
register.pay(20)
register.total
