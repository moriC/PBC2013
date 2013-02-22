class UserController < ApplicationController
  layout 'main'

  def show
  end

  def edit
  	@userinfo = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(params[:user])
  	  redirect_to @user
  	else
  	  render "/user/edit"
  	end
  end

end
