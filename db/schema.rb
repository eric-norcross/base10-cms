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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130418214039) do

  create_table "brand_styles", :force => true do |t|
    t.integer  "brand_id"
    t.integer  "style_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "kind"
  end

  create_table "collection_components", :force => true do |t|
    t.integer  "collection_id"
    t.integer  "component_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "collection_styles", :force => true do |t|
    t.integer  "collection_id"
    t.integer  "style_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "collections", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "component_styles", :force => true do |t|
    t.integer  "style_id"
    t.integer  "component_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "components", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "finishes", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "skin_id"
    t.text     "content"
    t.integer  "section_id"
  end

  create_table "products", :force => true do |t|
    t.text     "name"
    t.text     "sku"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "skin_id"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "content"
    t.integer  "skin_id"
  end

  create_table "skins", :force => true do |t|
    t.text     "name"
    t.text     "template"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "brand_id"
  end

end
