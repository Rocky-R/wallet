class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :processed_on
      t.decimal :debit
      t.decimal :credit

      t.timestamps null: false
    end
  end
end
