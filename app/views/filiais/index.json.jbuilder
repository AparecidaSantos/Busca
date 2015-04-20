json.array!(@filiais) do |filial|
  json.extract! filial, :id, :nome, :endereco, :cnpj, :empresa_id
  json.url filial_url(filial, format: :json)
end
