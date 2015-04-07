json.array!(@snaredrums) do |snaredrum|
  json.extract! snaredrum, :id, :name, :imageURL, :brand, :description, :usedby
  json.url snaredrum_url(snaredrum, format: :json)
end
