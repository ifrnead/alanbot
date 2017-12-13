json.extract! informacao, :id, :tipo, :created_at, :updated_at
json.url informacao_url(informacao, format: :json)
