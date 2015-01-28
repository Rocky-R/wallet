class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :debit
      t.integer :credit
      t.integer :balance

      t.timestamps null: false
    end
  end
end
