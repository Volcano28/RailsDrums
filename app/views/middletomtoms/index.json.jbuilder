json.array!(@middletomtoms) do |middletomtom|
  json.extract! middletomtom, :id, :name, :imageURL, :brand, :description, :usedby
  json.url middletomtom_url(middletomtom, format: :json)
end
