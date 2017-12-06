require 'json'

class RespostasController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :callback ]

  def callback
    @resposta = Resposta.buscar(JSON.parse(params))
    render 'callback.json'
  end

end
