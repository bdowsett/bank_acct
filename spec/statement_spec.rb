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
end 