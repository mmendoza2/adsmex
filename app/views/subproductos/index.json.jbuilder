json.array!(@subproductos) do |subproducto|
  json.extract! subproducto, 
  json.url subproducto_url(subproducto, format: :json)
end
