class SessionsController < ApplicationController

  def new
  end

  def create
  end

  def destroy
    reset_session
    redirect_to '/users/sign_in', notice: 'Logged out!'
  end
end
