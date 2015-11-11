json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :cod_cli, :nombre, :apellido, :direccion
  json.url cliente_url(cliente, format: :json)
end
