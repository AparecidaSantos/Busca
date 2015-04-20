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

ActiveRecord::Schema.define(version: 20150420225101) do

  create_table "empresas", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filiais", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cnpj"
    t.integer  "empresa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "filiais", ["empresa_id"], name: "index_filiais_on_empresa_id"

  create_table "veiculos", force: :cascade do |t|
    t.integer  "empresa_id"
    t.integer  "filial_id"
    t.string   "placa"
    t.string   "ano"
    t.string   "numero"
    t.string   "renavam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "veiculos", ["empresa_id"], name: "index_veiculos_on_empresa_id"
  add_index "veiculos", ["filial_id"], name: "index_veiculos_on_filial_id"

end
