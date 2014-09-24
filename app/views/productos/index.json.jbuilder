json.array!(@productos) do |producto|
  json.extract! producto, 
  json.url producto_url(producto, format: :json)
end
