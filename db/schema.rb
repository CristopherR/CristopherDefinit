# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151111174731) do

  create_table "alquilers", force: :cascade do |t|
    t.integer  "num_alquiler"
    t.date     "fecha_out"
    t.date     "fecha_in"
    t.integer  "pelicula_id"
    t.integer  "cliente_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "alquilers", ["cliente_id"], name: "index_alquilers_on_cliente_id"
  add_index "alquilers", ["pelicula_id"], name: "index_alquilers_on_pelicula_id"

  create_table "clientes", force: :cascade do |t|
    t.integer  "cod_cli"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.integer  "cod_pel"
    t.string   "titulo"
    t.integer  "ano"
    t.string   "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "vendedor_clientes", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "vendedor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vendedor_clientes", ["cliente_id"], name: "index_vendedor_clientes_on_cliente_id"
  add_index "vendedor_clientes", ["vendedor_id"], name: "index_vendedor_clientes_on_vendedor_id"

  create_table "vendedors", force: :cascade do |t|
    t.integer  "cod_vendedor"
    t.string   "nombreV"
    t.string   "apellidoV"
    t.string   "direccionV"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
