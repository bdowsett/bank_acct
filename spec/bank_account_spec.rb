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
end 