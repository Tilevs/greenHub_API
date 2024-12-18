class Produto < ApplicationRecord
  has_many :produto_pagamentos
  
  validates :peso, presence: true, numericality: { greater_than: 0 }
  validates :tipo, :nome, presence: true
end
