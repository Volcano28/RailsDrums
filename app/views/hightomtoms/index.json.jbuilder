json.array!(@hightomtoms) do |hightomtom|
  json.extract! hightomtom, :id, :name, :imageURL, :brand, :description, :usedby
  json.url hightomtom_url(hightomtom, format: :json)
end
