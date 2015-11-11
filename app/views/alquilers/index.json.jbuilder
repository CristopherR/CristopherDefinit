json.array!(@alquilers) do |alquiler|
  json.extract! alquiler, :id, :num_alquiler, :fecha_out, :fecha_in, :pelicula_id, :cliente_id
  json.url alquiler_url(alquiler, format: :json)
end
