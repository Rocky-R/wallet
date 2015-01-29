class Transaction < ActiveRecord::Base

  validates :transaction_description, presence: true
  validates :credit, presence: true,
            unless: -> (transaction) { transaction.debit.present? }
  validates :debit, presence: true,
            unless: -> (transaction) { transaction.credit.present? }
  validates :credit, numericality: true, allow_nil: true
  validates :debit, numericality: true, allow_nil: true

  def self.balance
    sum(:debit) + sum(:credit)
  end
end
