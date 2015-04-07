json.array!(@hihats) do |hihat|
  json.extract! hihat, :id, :name, :imageURL, :brand, :description, :usedby
  json.url hihat_url(hihat, format: :json)
end
