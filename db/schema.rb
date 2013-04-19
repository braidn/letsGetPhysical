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

ActiveRecord::Schema.define(:version => 20130419022634) do

  create_table "combos", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  add_index "combos", ["user_id"], :name => "index_combos_on_user_id"

  create_table "combos_workouts", :id => false, :force => true do |t|
    t.integer  "combo_id",   :null => false
    t.integer  "workout_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "combos_workouts", ["combo_id", "workout_id"], :name => "index_combos_workouts_on_combo_id_and_workout_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",            :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "workouts", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image"
    t.string   "video"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "body_type"
  end

end
