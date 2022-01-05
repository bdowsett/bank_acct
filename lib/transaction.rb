# frozen_string_literal: true

class Transaction
  attr_accessor :time, :money, :current_balance, :type

  def initialize(type, money, time, balance)
    @money = money
    @time = time
    @type = type
    @current_balance = balance
  end
end
