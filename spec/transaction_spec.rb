require 'transaction'

describe Transaction do 
    it "it creates an instance of a Transaction" do
        transaction = Transaction.new("debit", 10, time = Time.now, @balance)
        expect(transaction).to be_an_instance_of(Transaction)
    end
end 

