json.array!(@cards) do |card|
  json.extract! card, :id, :name, :id, :price, :set
  json.url card_url(card, format: :json)
end
