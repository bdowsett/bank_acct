class BankAccount
    attr_accessor :balance, :transactions
    def initialize
        @balance = 0 
        @transactions = []
    end 

    def deposit(money)
        @balance += money
    end 
end 