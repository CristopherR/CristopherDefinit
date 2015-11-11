class CreateAlquilers < ActiveRecord::Migration
  def change
    create_table :alquilers do |t|
      t.integer :num_alquiler
      t.date :fecha_out
      t.date :fecha_in
      t.references :pelicula, index: true, foreign_key: true
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
