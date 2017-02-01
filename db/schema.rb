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

ActiveRecord::Schema.define(version: 20170201021347) do

  create_table "lis_tasks", force: :cascade do |t|
    t.string   "nombre"
    t.string   "url"
    t.date     "fecha_creacion"
    t.date     "ultimo_update"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "listasks", force: :cascade do |t|
    t.string   "nombre"
    t.string   "url"
    t.date     "fecha_creacion"
    t.date     "ultimo_update"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "slug"
  end

  create_table "longtasks", force: :cascade do |t|
    t.integer  "porcentaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simpletasks", force: :cascade do |t|
    t.string   "descripcion"
    t.string   "estado"
    t.string   "prioridad"
    t.integer  "listask_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["listask_id"], name: "index_simpletasks_on_listask_id"
  end

  create_table "task_managers", force: :cascade do |t|
    t.string   "descripcion"
    t.string   "estado"
    t.integer  "listask_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["listask_id"], name: "index_task_managers_on_listask_id"
  end

  create_table "temporaltasks", force: :cascade do |t|
    t.date     "fecha_validez"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
