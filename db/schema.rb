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

ActiveRecord::Schema.define(version: 20171110163756) do

  create_table "characters", force: :cascade do |t|
    t.integer "inventory_id"
    t.string "name"
    t.integer "experience"
    t.integer "level"
    t.integer "health"
    t.integer "attack_pwr"
    t.integer "defense_pwr"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_characters_on_inventory_id"
  end

  create_table "current_stats", force: :cascade do |t|
    t.integer "character_id"
    t.integer "health"
    t.integer "attack_pwr"
    t.integer "defense_pwr"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_current_stats_on_character_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "item_id"
    t.integer "quantity"
    t.boolean "equiped"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "inventory_id"
    t.string "name"
    t.string "type"
    t.integer "attack"
    t.integer "defense"
    t.integer "healing"
    t.integer "required_level"
    t.integer "durability"
    t.boolean "consumable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_items_on_inventory_id"
  end

end
