require 'suap'

class Usuario < ApplicationRecord
    
    def self.autenticar(matricula:, senha:)
      usuario = self.find_by_matricula(matricula)
      if usuario
        begin
          if SUAP::API.authenticate(username: matricula, password: senha)
            return usuario
          end
        rescue RestClient::BadRequest, RestClient::Unauthorized
        end
      end
      return false
    end

end
