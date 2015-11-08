class RegistrationsController < Devise::RegistrationsController

  before_filter :store_location

  private

  def configure_permitted_parameters

    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :email, :password, :password_confirmation, :remember_me, :location, :avatar, :avatar_cache) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :email, :password, :password_confirmation, :current_password, :location, :avatar, :avatar_cache, :remove_avatar) }

  end

  def sign_up_params

    params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :location, :avatar)

  end

  def account_update_params

    params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :current_password, :location, :avatar, :remove_avatar)

  end

  def after_update_path_for(resource)

    root_path

  end

  def store_location
    # store last url - this is needed for post-login redirect to whatever the user last visited.
    return unless request.get?

    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      session[:previous_url] = request.fullpath

    end

  end

  def after_sign_up_path_for(resource)

    session[:previous_url] || root_path

  end

  def after_sign_in_path_for(resource)

    session[:previous_url] || root_path

  end


end