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

ActiveRecord::Schema.define(version: 20180227122025) do

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.float "abv"
    t.float "ibu"
    t.float "ounces"
    t.integer "brewery_id"
    t.integer "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brewery_id"], name: "index_beers_on_brewery_id"
    t.index ["style_id"], name: "index_beers_on_style_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bid"
    t.index ["state_id"], name: "index_breweries_on_state_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "abrv"
    t.string "name"
    t.integer "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lat"
    t.string "long"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
