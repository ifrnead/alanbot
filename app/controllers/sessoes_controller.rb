class SessoesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    
  end
  
  def logar
    @usuario = Usuario.autenticar( matricula: params[:matricula], senha: params[:senha])
    
    if @usuario
      session[:usuario_id] = @usuario.id
      flash[:notice] = "Seja bem vindo!"
      redirect_to :dashboard_index
    else
      flash[:notice] = "Verifique sua matrícula e senha!"
      redirect_to :root
    end
  end
  
  def deslogar
    session[:usuario_id] = nil
    redirect_to :root
  end
 
end
