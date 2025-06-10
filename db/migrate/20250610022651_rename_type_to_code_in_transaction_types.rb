class RenameTypeToCodeInTransactionTypes < ActiveRecord::Migration[8.0]
  def change
     rename_column :transaction_types, :type, :code
  end
end
