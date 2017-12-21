require 'suap'

class Usuario < ApplicationRecord
    
    def self.autenticar(matricula:, senha:)
       
        begin
            return SUAP::API.authenticate(username: matricula, password: senha)
        rescue RestClient::BadRequest, RestClient::Unauthorized
            return false
        end
    end
    
    
end
