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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131202061518) do

  create_table "businessstatuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "postcode"
    t.string   "address"
    t.string   "phoneNo"
    t.string   "destinationName"
  end

  create_table "enginemodels", force: true do |t|
    t.string   "modelcode"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engineorders", force: true do |t|
    t.string   "issue_no"
    t.date     "inquiry_date"
    t.integer  "registered_user_id"
    t.integer  "updated_user_id"
    t.integer  "branch_id"
    t.integer  "salesman_id"
    t.integer  "install_place_id"
    t.string   "orderer"
    t.string   "machine_no"
    t.integer  "time_of_running"
    t.text     "change_comment"
    t.date     "order_date"
    t.integer  "sending_place_id"
    t.text     "sending_comment"
    t.date     "desirable_delivery_date"
    t.integer  "businessstatus_id"
    t.integer  "new_engine_id"
    t.integer  "old_engine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engines", force: true do |t|
    t.string   "engineModelName"
    t.string   "salesModelName"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "enginestatus_id"
    t.string   "serialno"
    t.integer  "company_id"
  end

  create_table "enginestatuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repairs", force: true do |t|
    t.string   "issueNo"
    t.date     "issueDate"
    t.date     "arriveDate"
    t.date     "startDate"
    t.date     "finishDate"
    t.text     "beforeComment"
    t.text     "afterComment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "engine_id"
    t.integer  "timeOfRunning"
    t.date     "dayOfTest"
    t.text     "arrivalComment"
    t.string   "orderNo"
    t.date     "orderDate"
    t.string   "constructionNo"
    t.date     "desirableFinishDate"
    t.date     "estimatedFinishDate"
    t.text     "returningComment"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "userid"
    t.string   "category"
    t.string   "name"
    t.integer  "company_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["userid"], name: "index_users_on_userid", unique: true

end
