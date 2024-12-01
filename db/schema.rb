# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_12_01_172510) do
  create_table "empresas", force: :cascade do |t|
    t.string "endereco"
    t.string "cnpj"
    t.string "telefone"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estoques", force: :cascade do |t|
    t.string "endereço"
    t.integer "empresa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_estoques_on_empresa_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "cpf"
    t.string "endereco"
    t.integer "empresas_id"
    t.index ["empresas_id"], name: "index_funcionarios_on_empresas_id"
  end

  create_table "pagamentos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "empresas_id"
    t.index ["empresas_id"], name: "index_pagamentos_on_empresas_id"
  end

  create_table "produto_pagamentos", force: :cascade do |t|
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pagamento_id"
    t.integer "produto_id"
    t.index ["pagamento_id"], name: "index_produto_pagamentos_on_pagamento_id"
    t.index ["produto_id"], name: "index_produto_pagamentos_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.integer "id_produto"
    t.string "tipo"
    t.float "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.integer "estoque_id"
    t.index ["estoque_id"], name: "index_produtos_on_estoque_id"
  end

  add_foreign_key "estoques", "empresas"
  add_foreign_key "funcionarios", "empresas", column: "empresas_id"
  add_foreign_key "pagamentos", "empresas", column: "empresas_id"
  add_foreign_key "produto_pagamentos", "pagamentos"
  add_foreign_key "produto_pagamentos", "produtos"
  add_foreign_key "produtos", "estoques"
end
