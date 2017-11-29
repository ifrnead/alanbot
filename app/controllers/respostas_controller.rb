class RespostasController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :callback ]

  def callback
    render 'callback.json'
  end

end
