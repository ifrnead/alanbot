class Mensagem < ApplicationRecord
    belongs_to :resposta, optional: true
    before_create :buscar_resposta

    def self.parse(json)
      params = JSON.parse(json)
      Mensagem.create({
        texto: params['result']['resolvedQuery'],
        json: params.to_json
      })
    end

    def buscar_resposta
      params = JSON.parse(self.json)
      alvo = Alvo.find_by(nome: params['result']['parameters']['alvos'])
      informacao = Informacao.find_by(tipo: params['result']['parameters']['informacoes'])

      self.resposta = Resposta.find_by(alvo: alvo, informacao: informacao)
      true
    end
end
