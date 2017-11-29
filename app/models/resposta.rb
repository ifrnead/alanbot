class Resposta < ApplicationRecord
  belongs_to :alvo
  belongs_to :informacao

  validates :informacao, :alvo, :mensagem, presence: true
end
