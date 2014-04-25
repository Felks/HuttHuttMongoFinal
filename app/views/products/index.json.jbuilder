json.array!(@products) do |product|
  json.extract! product, :id, :pname, :pdescription, :price
  json.url product_url(product, format: :json)
end
