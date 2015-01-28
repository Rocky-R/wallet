class AddDescriptionToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :transaction_description, :string
  end
end
