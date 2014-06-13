json.array!(@metodologias) do |metodologia|
  json.extract! metodologia, 
  json.url metodologia_url(metodologia, format: :json)
end
