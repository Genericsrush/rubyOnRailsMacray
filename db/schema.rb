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

ActiveRecord::Schema.define(version: 2020_02_27_204532) do

  create_table "cat_breeds", force: :cascade do |t|
    t.string "Name"
    t.integer "country_origin_id", null: false
    t.integer "lifespan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_origin_id"], name: "index_cat_breeds_on_country_origin_id"
    t.index ["lifespan_id"], name: "index_cat_breeds_on_lifespan_id"
  end

  create_table "cat_temps", force: :cascade do |t|
    t.integer "cat_id", null: false
    t.integer "temperament_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cat_id"], name: "index_cat_temps_on_cat_id"
    t.index ["temperament_id"], name: "index_cat_temps_on_temperament_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.boolean "shots"
    t.integer "cat_breed_id", null: false
    t.integer "cat_temp_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cat_breed_id"], name: "index_cats_on_cat_breed_id"
    t.index ["cat_temp_id"], name: "index_cats_on_cat_temp_id"
  end

  create_table "country_origins", force: :cascade do |t|
    t.string "Name"
    t.string "Abbriviation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dog_breeds", force: :cascade do |t|
    t.string "Name"
    t.integer "country_origin_id", null: false
    t.integer "lifespan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_origin_id"], name: "index_dog_breeds_on_country_origin_id"
    t.index ["lifespan_id"], name: "index_dog_breeds_on_lifespan_id"
  end

  create_table "dog_temps", force: :cascade do |t|
    t.integer "cat_id", null: false
    t.integer "temperament_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cat_id"], name: "index_dog_temps_on_cat_id"
    t.index ["temperament_id"], name: "index_dog_temps_on_temperament_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.boolean "shots"
    t.integer "dog_breed_id", null: false
    t.integer "dog_temp_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dog_breed_id"], name: "index_dogs_on_dog_breed_id"
    t.index ["dog_temp_id"], name: "index_dogs_on_dog_temp_id"
  end

  create_table "lifespans", force: :cascade do |t|
    t.string "age_range"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "temperaments", force: :cascade do |t|
    t.string "behavour"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cat_breeds", "country_origins"
  add_foreign_key "cat_breeds", "lifespans"
  add_foreign_key "cat_temps", "cats"
  add_foreign_key "cat_temps", "temperaments"
  add_foreign_key "cats", "cat_breeds"
  add_foreign_key "cats", "cat_temps"
  add_foreign_key "dog_breeds", "country_origins"
  add_foreign_key "dog_breeds", "lifespans"
  add_foreign_key "dog_temps", "cats"
  add_foreign_key "dog_temps", "temperaments"
  add_foreign_key "dogs", "dog_breeds"
  add_foreign_key "dogs", "dog_temps"
end
