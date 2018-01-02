class SessoesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    
  end
  
  def logar
    @usuario = Usuario.autenticar( matricula: params[:matricula], senha: params[:senha])
    
    if @usuario
      session[:usuario_id] = @usuario.id
      redirect_to dashboard_path, notice: 'Seja bem vindo!'
    else
      redirect_to root_path, alert: "Verifique sua matrícula e senha!"
    end
  end
  
  def deslogar
    session[:usuario_id] = nil
    redirect_to :root
  end
 
end
