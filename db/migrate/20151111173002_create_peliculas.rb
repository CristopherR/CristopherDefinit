class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.integer :cod_pel
      t.string :titulo
      t.integer :ano
      t.string :categoria

      t.timestamps null: false
    end
  end
end
