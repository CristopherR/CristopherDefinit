class VendedorCliente < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :vendedor
end
