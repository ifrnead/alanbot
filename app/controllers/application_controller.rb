class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_raven_context
  
  private

  def auth_required
    if session[:usuario_id] 
      @usuario = Usuario.find(session[:usuario_id])
    else
      redirect_to login_path, alert: 'Autenticação necessária!'
    end
  end

  def set_raven_context
    Raven.user_context(id: session[:current_user_id]) # or anything else in session
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end
end
