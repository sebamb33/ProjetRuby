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

ActiveRecord::Schema[7.0].define(version: 2022_06_14_124248) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aeroports", force: :cascade do |t|
    t.string "name"
    t.string "libelle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "nb_passagers"
    t.boolean "choix_place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "vol_id", null: false
    t.index ["vol_id"], name: "index_reservations_on_vol_id"
  end

  create_table "vols", force: :cascade do |t|
    t.integer "numero"
    t.integer "duree"
    t.datetime "date_depart"
    t.integer "nb_place_economique"
    t.integer "nb_place_business"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "departure_aeroport_id", null: false
    t.bigint "arrival_aeroport_id", null: false
    t.index ["arrival_aeroport_id"], name: "index_vols_on_arrival_aeroport_id"
    t.index ["departure_aeroport_id"], name: "index_vols_on_departure_aeroport_id"
  end

  add_foreign_key "reservations", "vols"
  add_foreign_key "vols", "aeroports", column: "arrival_aeroport_id"
  add_foreign_key "vols", "aeroports", column: "departure_aeroport_id"
end
