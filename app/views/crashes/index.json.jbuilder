json.array!(@crashes) do |crash|
  json.extract! crash, :id, :name, :imageURL, :brand, :description, :usedby
  json.url crash_url(crash, format: :json)
end
