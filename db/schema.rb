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

ActiveRecord::Schema.define(version: 2020_07_04_235006) do

  create_table "homecomments", force: :cascade do |t|
    t.text "content"
    t.integer "home_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["home_id"], name: "index_homecomments_on_home_id"
    t.index ["user_id"], name: "index_homecomments_on_user_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "product_name"
    t.string "market_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "homeimage_file_name"
    t.string "homeimage_content_type"
    t.integer "homeimage_file_size"
    t.datetime "homeimage_updated_at"
    t.integer "user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "keywords"
    t.string "keywords2"
    t.string "keywords3"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_image_file_name"
    t.string "product_image_content_type"
    t.integer "product_image_file_size"
    t.datetime "product_image_updated_at"
    t.integer "user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_image_file_name"
    t.string "profile_image_content_type"
    t.integer "profile_image_file_size"
    t.datetime "profile_image_updated_at"
    t.integer "user_id"
  end

  create_table "shopcomments", force: :cascade do |t|
    t.text "content"
    t.integer "shop_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shopcomments_on_shop_id"
    t.index ["user_id"], name: "index_shopcomments_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "shop_name"
    t.string "shop_type"
    t.string "shop_city"
    t.string "business_day"
    t.string "shop_timeing"
    t.string "delivery"
    t.string "min_order"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "shop_image_file_name"
    t.string "shop_image_content_type"
    t.integer "shop_image_file_size"
    t.datetime "shop_image_updated_at"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "country"
    t.string "business_type"
    t.string "mobile_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
