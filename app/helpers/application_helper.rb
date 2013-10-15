module ApplicationHelper

  def current_user
    return @current_user if @current_user

    user_id = cookies.signed[:cellrox_session]
    return nil unless user_id
    @current_user = User.find(user_id)
  end

  def sign_in user
    # In production code a salt should be included in the cookie
    cookies.signed[:cellrox_session] = user.id
  end

  def sign_out
    cookies.signed[:cellrox_session]
  end

  def authenticate_user
    redirect_to new_session_path unless current_user
  end
end
