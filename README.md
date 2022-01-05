A small Bank acct programme using Ruby and TDD to demonstrate process

### Approach 
I decided that this implementation would require 3 classes 

* BankAccount class - to handle the deposits, withdrawals and then store the transactions to the statement.
* Transaction class - to create a transaction class with type, amount, current balance & time attributes that are passed by the account to the statement class. 
* Statement class - stores the transactions and prints statement.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```
```
USER STORIES 

As a user 
I would like to open a bank acct
So I can manage my money

As a user 
I would like to able to make deposits
So I can save money 

As a user 
I would like to be able to make withdrawals from my acct
So I can spend money

As a user 
I would like to be able to to see a statement of my acct
So I can manage my money

As a user 
so I can keep track of my finances 
I want to be able to see credits with dates on my statement

As a user 
so I can keep track of my finances 
I want to be able to see debits with dates on my statement

As a user 
so I can keep track of my finances 
I want to be able to see a balance on my statement
```




