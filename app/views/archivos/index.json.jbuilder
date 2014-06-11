json.array!(@archivos) do |archivo|
  json.extract! archivo, 
  json.url archivo_url(archivo, format: :json)
end
