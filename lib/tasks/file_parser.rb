require 'date'
require 'bigdecimal'

class FileParser
  def self.import_from_file(path)
    File.foreach(path) do |line|
      transaction_type_code = line[0..0].to_i
      date = Date.strptime(line[1..8], "%Y%m%d")
      value = BigDecimal(line[9..18]).to_i / 100.0
      cpf = line[19..29].strip
      card = line[30..41].strip
      time = Time.strptime(line[42..47], "%H%M%S").strftime("%H:%M:%S")
      owner_name = line[48..61].strip
      store_name = line[62..80].strip

      store = Store.find_or_create_by(store_name: store_name, owner_name: owner_name, cpf: cpf, card: card)
      transaction_type = TransactionType.find_by(code: transaction_type_code)

      unless transaction_type
        puts "Transaction type #{transaction_type_code} não encontrado, pulando..."
        next
      end

      Transaction.create!(
        date: date,
        time: time,
        value: value,
        store: store,
        transaction_type: transaction_type
      )
    end
  end
end

# FileParser.import_from_file(Rails.root.join("path", "to", "CNAB.txt"))
# FileParser.import_from_file(Rails.root.join("storage/98/m6/98m67pq1a7646iz5t4676adcxpoa"))
