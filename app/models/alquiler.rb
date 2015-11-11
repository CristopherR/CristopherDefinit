class Alquiler < ActiveRecord::Base
  belongs_to :pelicula
  belongs_to :cliente
end
