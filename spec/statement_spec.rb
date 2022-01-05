require 'statement'


describe Statement do
    it "it creates an instance of Statement class" do
        statement = Statement.new
        expect(statement).to be_an_instance_of(Statement)
    end 
    it "is initialized with zero transactions" do 
        statement = Statement.new
        expect(statement.transactions).to be_empty
    end 
    it "stores credits in transactions array" do
        account = BankAccount.new
        account.deposit(10)
        expect(account.statement.transactions[0].type).to eql("credit")
    end 
    it "stores debits in transactions array" do
        account = BankAccount.new
        account.deposit(5)
        account.withdraw(10)
        expect(account.statement.transactions[1].type).to eql("debit")
    end 
    it "should respond to print" do
        statement = Statement.new
        expect(statement).to respond_to(:print)
    end 
    it "should print statement in correct format" do
        account = BankAccount.new
        account.deposit(5)
        account.withdraw(10)
        expect { account.statement.print }.to output("date || credit || debit || balance\n#{Time.now.strftime("%m/%d/%Y")} || || 10.00 || -5.00\n#{Time.now.strftime("%m/%d/%Y")} || 5.00 || || 5.00\n").to_stdout 
    end
end 