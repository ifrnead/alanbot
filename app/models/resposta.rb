class Resposta < ApplicationRecord
  belongs_to :alvo
  belongs_to :informacao

  validates :mensagem, presence: true

  def self.buscar(params)
    alvo = Alvo.find_by(nome: params['result']['parameters']['alvos'])
    informacao = Informacao.find_by(tipo: params['result']['parameters']['informacoes'])

    self.find_by(alvo: alvo, informacao: informacao)
  end
  

end

