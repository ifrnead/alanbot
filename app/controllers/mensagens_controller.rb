class MensagensController < ApplicationController
  before_action :auth_required, except: [ :callback ]
  before_action :set_mensagem, only: [ :show ]
  skip_before_action :verify_authenticity_token, only: [ :callback ]

  def callback
    mensagem = Mensagem.parse(request.body.read)

    if mensagem.resposta
      @resposta = mensagem.resposta
      render 'callback.json'
    else
      render 'not_found.json'
    end
  end

  def index
    @mensagens = Mensagem.all
  end

  def show
  end

  private

    def set_mensagem
      @mensagem = Mensagem.find(params[:id])
    end
end
