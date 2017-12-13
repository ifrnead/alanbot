class AlvosController < ApplicationController
  before_action :set_alvo, only: [:show, :edit, :update, :destroy]
  def index
      @alvos = Alvo.all
  end

  def edit
  end

  def show
  end

  def new
    @alvo = Alvo.new
  end
  
  
  def create
    @alvo = Alvo.new(alvo_params)

    respond_to do |format|
      if @alvo.save
        format.html { redirect_to @alvo, notice: 'Alvo was successfully created.' }
        format.json { render :show, status: :created, location: @alvo }
      else
        format.html { render :new }
        format.json { render json: @alvo.errors, status: :unprocessable_entity }
      end
    end
  end
  
    def update
    respond_to do |format|
      if @alvo.update(alvo_params)
        format.html { redirect_to @alvo, notice: 'Alvo was successfully updated.' }
        format.json { render :show, status: :ok, location: @alvo }
      else
        format.html { render :edit }
        format.json { render json: @alvo.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
    def destroy
    @alvo.destroy
    respond_to do |format|
      format.html { redirect_to alvos_url, notice: 'Alvo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alvo
      @alvo = Alvo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alvo_params
      params.require(:alvo).permit(:nome)
    end
end
