# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

TransactionType.create!([
  { code: 1, description: "Débito", nature: "Entrada", signal: "+" },
  { code: 2, description: "Boleto", nature: "Saída", signal: "-" },
  { code: 3, description: "Financiamento", nature: "Saída", signal: "-" },
  { code: 4, description: "Crédito", nature: "Entrada", signal: "+" },
  { code: 5, description: "Recebimento Empréstimo", nature: "Entrada", signal: "+" },
  { code: 6, description: "Vendas", nature: "Entrada", signal: "+" },
  { code: 7, description: "Recebimento TED", nature: "Entrada", signal: "+" },
  { code: 8, description: "Recebimento DOC", nature: "Entrada", signal: "+" },
  { code: 9, description: "Aluguel", nature: "Saída", signal: "-" }
])
