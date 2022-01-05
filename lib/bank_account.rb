# frozen_string_literal: true

require './lib/transaction'
require './lib/statement'

class BankAccount
  attr_accessor :balance, :statement

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(money)
    @balance += money
    @statement.transactions.push(Transaction.new('credit', money, Time.now, @balance))
  end

  def withdraw(money)
    @balance -= money
    @statement.transactions.push(Transaction.new('debit', money, Time.now, @balance))
  end
end
