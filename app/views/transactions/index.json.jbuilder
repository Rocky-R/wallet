json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :debit, :credit, :balance
  json.url transaction_url(transaction, format: :json)
end
