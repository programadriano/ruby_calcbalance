class Transaction
  def execBalance(balance, transaction)
    return (transaction.include? "-" and balance.to_i + transaction.to_i < 0) ? balance.to_i + transaction.to_i - 500 : balance.to_i + transaction.to_i
  end
end
