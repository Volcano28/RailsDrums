json.array!(@rides) do |ride|
  json.extract! ride, :id, :name, :imageURL, :brand, :description, :usedby
  json.url ride_url(ride, format: :json)
end
