class AddDeviseTokenAuthToUsers < ActiveRecord::Migration[8.0]
  def change
     # Campos necessários para o DeviseTokenAuth
    add_column :users, :provider, :string, null: false, default: "email"
    add_column :users, :uid, :string, null: false, default: ""
    add_column :users, :tokens, :text

    # Índices para performance
    add_index :users, [:uid, :provider], unique: true

    # Preencher os campos existentes
    reversible do |dir|
      dir.up do
        User.reset_column_information
        User.find_each do |user|
          user.uid = user.email
          user.provider = 'email'
          user.save!
        end
      end
    end
  end
end
