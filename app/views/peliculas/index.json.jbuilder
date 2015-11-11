json.array!(@peliculas) do |pelicula|
  json.extract! pelicula, :id, :cod_pel, :titulo, :ano, :categoria
  json.url pelicula_url(pelicula, format: :json)
end
