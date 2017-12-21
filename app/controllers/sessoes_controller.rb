class SessoesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    
  end
  
  def logar
    @usuario = Usuario.autenticar( matricula: params[:matricula], senha: params[:senha])
    puts @usuario
    if @usuario
       flash[:notice] = "Seja bem vindo!"
       redirect_to :dashboard_index
    else
      flash[:notice] = "Verifique sua matricula e senha, pois não foi encontrado ninguém."
      redirect_to :root
    end
  end
  
  
 
end
