module ApplicationHelper

  def current_user
    return @current_user if @current_user

    user_id = cookies.signed[:session]
    return nil unless user_id
    @current_user = User.find(user_id)
  end

  def sign_in user
    # In production code a salt should be included in the cookie
    cookies.signed[:session] = user.id
  end
end
