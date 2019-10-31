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

ActiveRecord::Schema.define(version: 2019_10_31_004257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.date "idade"
    t.bigint "turma_id"
    t.bigint "materia_id"
    t.bigint "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["materia_id"], name: "index_alunos_on_materia_id"
    t.index ["professor_id"], name: "index_alunos_on_professor_id"
    t.index ["turma_id"], name: "index_alunos_on_turma_id"
  end

  create_table "materia", force: :cascade do |t|
    t.string "materia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "nome"
    t.string "materia"
    t.datetime "horario"
    t.string "turma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.string "turma"
    t.string "turno"
    t.string "materia"
    t.string "aluno"
    t.string "professor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alunos", "materia", column: "materia_id"
  add_foreign_key "alunos", "professors"
  add_foreign_key "alunos", "turmas"
end
