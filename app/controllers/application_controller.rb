class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:tipo])
  end

  def after_sign_in_path_for(resource)
    if resource.tipo.eql? 'cliente'
      "/clientes/new"
    elsif resource.tipo.eql? 'trabalhador'
      "/trabalhadors/new"
    else
      "/"
    end
  end
end
