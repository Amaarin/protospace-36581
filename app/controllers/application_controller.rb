class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
  
   private
  def configure_permitted_parameters  #特定のカラムを許容するメソッド
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])  #permit 取得したいキーを指定できる（:キー名, :キー名）
  end

end
