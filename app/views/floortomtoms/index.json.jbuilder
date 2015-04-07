json.array!(@floortomtoms) do |floortomtom|
  json.extract! floortomtom, :id, :name, :imageURL, :brand, :description, :usedby
  json.url floortomtom_url(floortomtom, format: :json)
end
