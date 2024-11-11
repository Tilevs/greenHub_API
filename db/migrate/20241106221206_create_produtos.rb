class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.integer :id_produto
      t.string :tipo
      t.float :peso

      t.timestamps
    end
  end
end