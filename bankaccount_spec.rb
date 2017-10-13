require_relative 'bankaccount'
RSpec.describe BankAccount do
  before(:each) do
    @account1 = BankAccount.new
  end

it 'has a getter method for retrieving the checking account balance' do
    expect(@account1.checking).to eq(0)
  end

it 'has a getter method that retrieves the total account balance' do
  expect(@account1.checking + @account1.saving).to eq(0)
end

context 'has a function that allows the user to withdraw cash' do
  it 'withdraws the money' do
    expect{ @account1.withdrawal("checking", 100) }.to raise_error("Insufficient Funds, you have 0 in this account")
  end

  it "raises an error if user tries to withdraw more money than the have in savings" do
  expect{ @account1.withdrawal("savings", 100) }.to raise_error("Insufficient Funds, you have 0 in this account")
  end
end

  it "raises an error when the user attempts to retrieve the total number of bank accounts" do
expect{ @account1.number_of_accounts }.to raise_error(NoMethodError)
  end

  it "raises an error when the user attempts to set the interest rate" do
expect{ @account1.interest_rate }.to raise_error(NoMethodError)
  end
end
