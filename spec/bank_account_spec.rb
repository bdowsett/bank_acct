require 'bank_account'

describe BankAccount do 
    it "it creates an instance of a Bank account" do
        account = BankAccount.new
        expect(account).to be_an_instance_of(BankAccount)
    end 
    it "is initialized with zero balance" do
        account = BankAccount.new
        expect(account.balance).to eq(0)
    end 
    it "is initilialized with zero transactions" do 
        account = BankAccount.new
        expect(account.transactions).to be_empty
    end 
    it "should respond to deposit" do
        account = BankAccount.new
        expect(account).to respond_to(:deposit).with(1).argument
    end 
    it "should increase the balance by deposited amount" do
        account = BankAccount.new
        account.deposit(10)
        expect(account.balance).to eq(10)
    end
    it "should add transaction to transactions array when deposit is made" do
        account = BankAccount.new
        account.deposit(10)
        expect(account.transactions).to include(a_kind_of(Object))
    end 
    it "should respond to withdraw" do
        account = BankAccount.new
        expect(account).to respond_to(:withdraw).with(1).argument
    end 
    it "should decrease the balance by withdrawn amount" do
        account = BankAccount.new
        account.deposit(10)
        account.withdraw(5)
        expect(account.balance).to eq(5)
    end
end 