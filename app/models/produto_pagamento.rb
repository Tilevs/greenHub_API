class ProdutoPagamento < ApplicationRecord
  belongs_to :produtos
  belongs_to :pagamentos
end
