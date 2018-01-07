class MensagensController < ApplicationController
  before_action :set_mensagem, only: [:show]


  def index
    @mensagens = Mensagem.all
  end

  def show
  end


  private
   
    def set_mensagem
      @mensagem = Mensagem.find(params[:id])
    end

    def mensagem_params
      params.fetch(:mensagem, {})
    end
end
