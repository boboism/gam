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

ActiveRecord::Schema.define(:version => 20130808023802) do

  create_table "devices", :force => true do |t|
    t.string   "device_name"
    t.string   "device_no"
    t.string   "specification"
    t.integer  "category_id"
    t.integer  "manufacturer_id"
    t.integer  "supplier_id"
    t.date     "service_date",                                        :default => '2013-08-08'
    t.decimal  "original_cost",        :precision => 18, :scale => 2, :default => 0.0
    t.integer  "responsible_by_id"
    t.integer  "depreciation_method",                                 :default => 1
    t.decimal  "salvage_rate",         :precision => 18, :scale => 2, :default => 5.0
    t.integer  "depreciation_life",                                   :default => 120
    t.integer  "inspection_period",                                   :default => 30
    t.date     "inspection_date_prev"
    t.date     "inspection_date_next"
    t.integer  "service_status",                                      :default => 1
    t.integer  "user_department_id"
    t.integer  "operator_id"
    t.integer  "installation_site_id"
    t.datetime "created_at",                                                                    :null => false
    t.datetime "updated_at",                                                                    :null => false
  end

  create_table "master_data", :force => true do |t|
    t.string   "type"
    t.string   "key"
    t.string   "value"
    t.text     "description"
    t.integer  "status"
    t.string   "index"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "master_data", ["index"], :name => "master_data_index"
  add_index "master_data", ["type", "key", "status"], :name => "master_data_tks"
  add_index "master_data", ["type", "key"], :name => "master_data_type_key"
  add_index "master_data", ["type"], :name => "master_data_type"

  create_table "model_relationships", :force => true do |t|
    t.string   "type"
    t.integer  "refer_from_id"
    t.string   "refer_from_type"
    t.integer  "refer_to_id"
    t.string   "refer_to_type"
    t.integer  "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
