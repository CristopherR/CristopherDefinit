json.array!(@vendedor_clientes) do |vendedor_cliente|
  json.extract! vendedor_cliente, :id, :cliente_id, :vendedor_id
  json.url vendedor_cliente_url(vendedor_cliente, format: :json)
end
