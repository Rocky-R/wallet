class Transaction < ActiveRecord::Base
  def self.balance
    sum(:debit) + sum(:credit)
  end
end
