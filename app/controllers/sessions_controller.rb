class SessionsController < ApplicationController
  def new 
  end

  def create
    user = User.where(email: params[:email]).first_or_create!
    sign_in(user)
    respond_to do |format|
      format.json { render json: {id: user.id, email: user.email} }
    end
  end

  def destroy
    sign_out
    render json: {success: true}
  end
end