require "csv"
require "./transaction.rb"

transaction = Transaction.new()

contapath = ARGV[0]
transacaopath = ARGV[1]

accounts = CSV.read(contapath)
transactions = CSV.read(transacaopath)

accounts.each do |account|
  transactions.each do |transactionRow|
    if account[0] == transactionRow[0]
      account[1] = transaction.execBalance(account[1], transactionRow[1])
    end
  end
end

accounts.each do |a|
  puts a.join(",")
end
