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

ActiveRecord::Schema.define(version: 0) do

  create_table "bathrooms", force: :cascade do |t|
    t.integer "floor_id"
    t.text "location"
    t.text "gender"
    t.integer "numstalls"
    t.integer "numurinals"
    t.integer "availstalls"
    t.integer "availurinals"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["floor_id"], name: "index_bathrooms_on_floor_id"
  end

  create_table "floors", force: :cascade do |t|
    t.text "level"
    t.integer "totalavailslots"
    t.integer "totalavailbath"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "totalnumoutlets"
    t.integer "totalnumbath"
  end

  create_table "outlets", force: :cascade do |t|
    t.integer "floor_id"
    t.text "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "numoutlets"
    t.integer "availslots"
    t.index ["floor_id"], name: "index_outlets_on_floor_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
