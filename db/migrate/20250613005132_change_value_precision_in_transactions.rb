class ChangeValuePrecisionInTransactions < ActiveRecord::Migration[8.0]
  def change
    change_column :transactions, :value, :decimal, precision: 10, scale: 2
  end
end
