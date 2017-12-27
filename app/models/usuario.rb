require 'suap'

class Usuario < ApplicationRecord
    
    def self.autenticar(matricula:, senha:)
      usuario = self.find_by_matricula(matricula)
      if usuario
        begin
          usuario.token = SUAP::API.authenticate(username: matricula, password: senha)
          return usuario
        rescue RestClient::BadRequest, RestClient::Unauthorized
        end
      end
      return false
    end

end
