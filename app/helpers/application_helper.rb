module ApplicationHelper

  def usuario_autenticado?
    session[:usuario_id].present?
  end

end
