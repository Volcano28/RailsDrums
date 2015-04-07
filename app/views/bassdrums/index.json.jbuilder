json.array!(@bassdrums) do |bassdrum|
  json.extract! bassdrum, :id, :name, :imageURL, :brand, :description, :usedby
  json.url bassdrum_url(bassdrum, format: :json)
end
