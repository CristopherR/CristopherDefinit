json.array!(@vendedors) do |vendedor|
  json.extract! vendedor, :id, :cod_vendedor, :nombreV, :apellidoV, :direccionV
  json.url vendedor_url(vendedor, format: :json)
end
