require './lib/transaction'

class BankAccount
    attr_accessor :balance, :transactions
    def initialize
        @balance = 0 
        @transactions = []
    end 

    def deposit(money)
        @balance += money
        @transactions.push(Transaction.new("debit", money, time = Time.now, @balance))
    end 

    def withdraw(money)
        @balance -= money
    end 

end 