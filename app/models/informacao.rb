class Informacao < ApplicationRecord
  validates :tipo, presence: true
  
  include Selectable
end
