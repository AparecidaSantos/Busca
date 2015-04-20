json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :empresa_id, :filial_id, :placa, :ano, :numero, :renavam
  json.url veiculo_url(veiculo, format: :json)
end
