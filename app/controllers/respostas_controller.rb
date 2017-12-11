require 'json'

class RespostasController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :callback ]

  def callback
    @resposta = Resposta.buscar(JSON.parse(request.body.read))
    if @resposta
      render 'callback.json'
    else
      render 'not_found.json'
    end
  end

end
