
require "./transaction.rb"

#transaction = Transaction.new()
describe Transaction do
  context "Teste de transacoes bancarias" do
    it "Deve creditar um valor na conta" do
      t = Transaction.new
      calc = t.execBalance("5000", "1000")
      expect(calc).to eq 6000
    end

    it "Deve  debitar somente a transaco" do
      t = Transaction.new
      calc = t.execBalance("5000", "-1000")
      expect(calc).to eq 4000
    end

    it "Deve zerar a conta" do
      t = Transaction.new
      calc = t.execBalance("5000", "-5000")
      expect(calc).to eq 0
    end

    it "Deve debitar a transaco mais a taxa" do
      t = Transaction.new
      calc = t.execBalance("5000", "-5500")
      expect(calc).to eq -1000
    end
  end
end
