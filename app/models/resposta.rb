class Resposta < ApplicationRecord
  belongs_to :alvo
  belongs_to :informacao

  validates :informacao, :alvo, :mensagem, presence: true

  def buscar(params)
    alvo = Alvo.find_by_nome(params['result']['parameters']['alvos'])
    informacao = Informacao.find_by_tipo(params['result']['parameters']['informacoes'])

    self.where(alvo: alvo, informacao: informacao)
  end
end
