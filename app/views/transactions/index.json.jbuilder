json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :processed_on, :debit, :credit
  json.url transaction_url(transaction, format: :json)
end
