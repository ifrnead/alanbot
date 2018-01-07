class Resposta < ApplicationRecord
  belongs_to :alvo
  belongs_to :informacao
  has_many :mensagens

  validates :mensagem, presence: true
end
