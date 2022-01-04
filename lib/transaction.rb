class Transaction
    def initialize(type, money, time, balance)
    @money = money 
    @time = Time.now
    @type = type
    @current_balance = balance
    end 
    
end 