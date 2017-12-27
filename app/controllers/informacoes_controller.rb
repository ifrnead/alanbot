class InformacoesController < ApplicationController
  before_action :auth_required
  before_action :set_informacao, only: [:show, :edit, :update, :destroy]
  
  def index
    @informacoes = Informacao.all
  end

  def show
  end

  def new
    @informacao = Informacao.new
  end

  
  def edit
  end

  def create
    @informacao = Informacao.new(informacao_params)

    respond_to do |format|
      if @informacao.save
        format.html { redirect_to @informacao, notice: 'Informacao was successfully created.' }
        format.json { render :show, status: :created, location: @informacao }
      else
        format.html { render :new }
        format.json { render json: @informacao.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @informacao.update(informacao_params)
        format.html { redirect_to @informacao, notice: 'Informacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @informacao }
      else
        format.html { render :edit }
        format.json { render json: @informacao.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @informacao.destroy
    respond_to do |format|
      format.html { redirect_to informacoes_url, notice: 'Informacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   
    def set_informacao
      @informacao = Informacao.find(params[:id])
      
    end

    def informacao_params
      params.require(:informacao).permit(:tipo)
    end
end
