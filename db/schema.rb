# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_19_170218) do

  create_table "features", force: :cascade do |t|
    t.integer "rooms"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "carspaces"
    t.integer "landsize"
    t.integer "buildingarea"
    t.decimal "distance"
    t.integer "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_features_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.text "suburb"
    t.text "address"
    t.text "type"
    t.integer "price"
    t.integer "yearbuilt"
    t.text "councilarea"
    t.decimal "lattitude"
    t.decimal "longitude"
    t.text "regionname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "features", "properties"
end
