json.array!(@cursos) do |curso|
  json.extract! curso, 
  json.url curso_url(curso, format: :json)
end
