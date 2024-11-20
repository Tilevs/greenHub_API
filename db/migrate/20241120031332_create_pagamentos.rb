class CreatePagamentos < ActiveRecord::Migration[7.1]
  def change
    create_table :pagamentos do |t|
      t.integer :id_pagamento
      t.string :tipo
      t.references :empresas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
