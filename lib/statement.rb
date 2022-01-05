class Statement
  attr_accessor :transactions
  def initialize
    @transactions = []
  end 

  def print
    puts "date || credit || debit || balance"
  @transactions.reverse.each{|transaction| 
  if transaction.type == "debit"
    puts "#{transaction.time.strftime("%m/%d/%Y").ljust(5)} || || #{sprintf("%0.2f", transaction.money)} || #{sprintf("%0.2f", transaction.current_balance)}" 
  else
    puts "#{transaction.time.strftime("%m/%d/%Y").ljust(5)} || #{sprintf("%0.2f", transaction.money)} || || #{sprintf("%0.2f", transaction.current_balance)}" end}
  end 
end 