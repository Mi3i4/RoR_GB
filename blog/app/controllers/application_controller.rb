class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parametres, if: :devise_controller?
  before_action :set_locale
  before_action :set_default_seo

  private

  def configure_permitted_parametres
    devise_parameter_sanitizer. permit(:sign_up) do |user_params|
      user_params.permit(:name, :email, :password)
    end
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(option = {})
    { locale: I18n.locale }.merge(option)
  end

  def set_default_seo
    @default_title = Seo::DEFAULT_TITLE
    @default_description = Seo::DEFAULT_DESCRIPTION
    @default_robots = Seo::DEFAULT_ROBOTS
  end
end
