require 'json'

class RespostasController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :callback ]
  before_action :auth_required, except: [ :callback ]
  before_action :set_resposta, only: [:show, :edit, :update, :destroy]
  
  def callback
    @resposta = Resposta.buscar(JSON.parse(request.body.read))
    if @resposta
      render 'callback.json'
    else
      render 'not_found.json'
    end
  end
  
  def index
    @respostas = Resposta.all
  end


  def show
  end

  def new
    @alvos = Alvo.all
    @informacoes = Informacao.all
    @resposta = Resposta.new
  end

  def edit
  end

  def create
    @resposta = Resposta.new(resposta_params)

    respond_to do |format|
      if @resposta.save
        format.html { redirect_to @resposta, notice: 'Resposta foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @resposta }
      else
        format.html { render :new }
        format.json { render json: @resposta.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @resposta.update(resposta_params)
        format.html { redirect_to @resposta, notice: 'Resposta foi atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @resposta }
      else
        format.html { render :edit }
        format.json { render json: @resposta.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @resposta.destroy
    respond_to do |format|
      format.html { redirect_to respostas_url, notice: 'Resposta foi deletada com sucesso.' }
      format.json { head :no_content }
    end
  end
  
  private
  
    def set_resposta
      @resposta = Resposta.includes(:alvo, :informacao).find(params[:id])
    end

    
    def resposta_params
      params.require(:resposta).permit(:mensagem, :alvo_id, :informacao_id)
    end
end
