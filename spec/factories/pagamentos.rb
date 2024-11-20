FactoryBot.define do
  factory :pagamento do
    id_pagamento { 1 }
    tipo { "MyString" }
    empresas { nil }
  end
end
