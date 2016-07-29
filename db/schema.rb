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

ActiveRecord::Schema.define(version: 20160729232547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "gym_id"
    t.integer  "address_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["address_id"], name: "index_activities_on_address_id", using: :btree
    t.index ["gym_id"], name: "index_activities_on_gym_id", using: :btree
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "add1"
    t.string   "add2"
    t.string   "city"
    t.string   "state_code"
    t.string   "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string   "name"
    t.boolean  "custom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gyms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "code"
    t.integer  "university_id"
    t.integer  "address_id"
    t.index ["address_id"], name: "index_gyms_on_address_id", using: :btree
    t.index ["university_id"], name: "index_gyms_on_university_id", using: :btree
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.boolean  "custom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "code"
  end

  create_table "user_goals", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "goal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_id"], name: "index_user_goals_on_goal_id", using: :btree
    t.index ["user_id"], name: "index_user_goals_on_user_id", using: :btree
  end

  create_table "user_interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "interest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["interest_id"], name: "index_user_interests_on_interest_id", using: :btree
    t.index ["user_id"], name: "index_user_interests_on_user_id", using: :btree
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "description"
    t.string   "phone"
    t.integer  "user_type_id"
    t.integer  "gym_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "fitness_level"
    t.index ["gym_id"], name: "index_users_on_gym_id", using: :btree
    t.index ["user_type_id"], name: "index_users_on_user_type_id", using: :btree
  end

  create_table "workout_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "workout_type_id"
    t.datetime "when"
    t.integer  "gym_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["gym_id"], name: "index_workouts_on_gym_id", using: :btree
    t.index ["user_id"], name: "index_workouts_on_user_id", using: :btree
    t.index ["workout_type_id"], name: "index_workouts_on_workout_type_id", using: :btree
  end

  add_foreign_key "activities", "addresses"
  add_foreign_key "activities", "gyms"
  add_foreign_key "gyms", "addresses"
  add_foreign_key "gyms", "universities"
  add_foreign_key "user_goals", "goals"
  add_foreign_key "user_goals", "users"
  add_foreign_key "user_interests", "interests"
  add_foreign_key "user_interests", "users"
  add_foreign_key "users", "gyms"
  add_foreign_key "users", "user_types"
  add_foreign_key "workouts", "gyms"
  add_foreign_key "workouts", "users"
  add_foreign_key "workouts", "workout_types"
end
