class Alvo < ApplicationRecord
  validates :nome, presence: true
  
  include Selectable
end
