class CreateProdutoPagamentos < ActiveRecord::Migration[7.1]
  def change
    create_table :produto_pagamentos do |t|
      t.integer :quantidade
      t.references :produtos, null: false, foreign_key: true
      t.references :pagamentos, null: false, foreign_key: true

      t.timestamps
    end
  end
end
