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

ActiveRecord::Schema.define(version: 20180107134544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alvos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informacoes", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mensagens", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "texto"
    t.bigint "resposta_id"
    t.text "json"
    t.index ["resposta_id"], name: "index_mensagens_on_resposta_id"
  end

  create_table "polos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "respostas", force: :cascade do |t|
    t.bigint "alvo_id"
    t.bigint "informacao_id"
    t.text "mensagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alvo_id"], name: "index_respostas_on_alvo_id"
    t.index ["informacao_id"], name: "index_respostas_on_informacao_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "respostas", "alvos"
  add_foreign_key "respostas", "informacoes"
end
