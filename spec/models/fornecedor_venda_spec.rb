require 'rails_helper'

RSpec.describe FornecedorVenda, type: :model do
  let(:fornecedor_venda) { build(:fornecedor_venda) }

  describe 'associations' do
    it { is_expected.to belong_to(:fornecedor) }
    it { is_expected.to belong_to(:produto) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:preco) }
    it { is_expected.to validate_numericality_of(:preco).is_greater_than(0) }
  end
end