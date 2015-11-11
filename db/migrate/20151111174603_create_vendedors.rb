class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.integer :cod_vendedor
      t.string :nombreV
      t.string :apellidoV
      t.string :direccionV

      t.timestamps null: false
    end
  end
end
