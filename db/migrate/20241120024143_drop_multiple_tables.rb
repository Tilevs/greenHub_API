class DropMultipleTables < ActiveRecord::Migration[7.1]
  def change
    drop_table :empresa_compras
    drop_table :empresa_vendas
    drop_table :fornecedor_vendas
    drop_table :fornecedors
    drop_table :pessoas
  end
end
