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

ActiveRecord::Schema.define(version: 20170324063429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_sub_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "code"
    t.string   "email"
    t.string   "phone"
    t.text     "s_address"
    t.text     "b_address"
    t.string   "website"
    t.text     "notes"
    t.string   "tax_reg_no"
    t.string   "cst_reg_no"
    t.string   "pan"
    t.string   "payment_method"
    t.float    "opening_balance"
    t.date     "opening_balance_date"
    t.string   "attachment"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "discount_types", force: :cascade do |t|
    t.string   "name"
    t.float    "percentage"
    t.float    "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "employee_id"
    t.date     "dob"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.date     "hire_date"
    t.date     "release_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "invoice_products", force: :cascade do |t|
    t.integer  "invoice_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "client_email"
    t.text     "billing_address"
    t.date     "invoice_date"
    t.date     "due_date"
    t.text     "message"
    t.text     "statement"
    t.float    "discount"
    t.string   "attachment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "tax_id"
    t.integer  "discount_type_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "product_vendors", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.string   "image"
    t.float    "cost"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxes", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.float    "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.string   "pan"
    t.string   "account_no"
    t.float    "opening_balance"
    t.string   "website"
    t.string   "tax_reg_no"
    t.date     "tax_reg_date"
    t.boolean  "tds"
    t.string   "entity"
    t.string   "section"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
