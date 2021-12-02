# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_02_145159) do

  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pelicula_series", force: :cascade do |t|
    t.string "imagen"
    t.string "titulo"
    t.integer "calificacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "genero_id"
    t.index ["genero_id"], name: "index_pelicula_series_on_genero_id"
  end

  create_table "pelicula_series_personajes", id: false, force: :cascade do |t|
    t.bigint "pelicula_serie_id"
    t.bigint "personaje_id"
    t.index ["pelicula_serie_id"], name: "index_pelicula_series_personajes_on_pelicula_serie_id"
    t.index ["personaje_id"], name: "index_pelicula_series_personajes_on_personaje_id"
  end

  create_table "personajes", force: :cascade do |t|
    t.string "imagen"
    t.string "nombre"
    t.integer "edad"
    t.integer "peso"
    t.text "historia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
