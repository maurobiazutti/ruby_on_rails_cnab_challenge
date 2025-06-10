class CreateStores < ActiveRecord::Migration[8.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :owner_name
      t.string :cpf
      t.string :card

      t.timestamps
    end
  end
end
