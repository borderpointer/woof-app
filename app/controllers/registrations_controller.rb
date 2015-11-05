class RegistrationsController < Devise::RegistrationsController


  private

  def configure_permitted_parameters

    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :email, :password, :password_confirmation, :location, :avatar) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :email, :password, :password_confirmation, :current_password, :location, :avatar) }

  end

  def sign_up_params

    params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :location, :avatar)

  end

  def account_update_params

    params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :current_password, :location, :avatar)

  end

  def after_update_path_for(resource)

    root_path

  end

  def after_sign_up_path_for(resource)

    root_path

  end

  def after_sign_in_path_for(resource)

    stored_location_for(resource) || root_path

  end


end