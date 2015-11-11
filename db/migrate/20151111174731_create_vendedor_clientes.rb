class CreateVendedorClientes < ActiveRecord::Migration
  def change
    create_table :vendedor_clientes do |t|
      t.references :cliente, index: true, foreign_key: true
      t.references :vendedor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
