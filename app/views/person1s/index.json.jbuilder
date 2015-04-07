json.array!(@person1s) do |person1|
  json.extract! person1, :id, :snaredrum_carts, :bassdrum_carts, :hightomtom_carts, :floortomtom_carts, :hihat_carts
  json.url person1_url(person1, format: :json)
end
