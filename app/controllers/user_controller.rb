# coding: utf-8
class UserController < ApplicationController
  layout 'main'

  def show
  end

  def edit
  	@userinfo = User.find(params[:id])
    if( current_user.id != @userinfo.id )
      flash[:alert] = "不正なユーザ処理を受け付けたため、正常なユーザ情報画面を表示します"
      redirect_to action: :show, id: current_user.id
    end
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(params[:user])
      flash[:notice] = "ユーザ情報更新に成功しました。"
  	  redirect_to action: :show
  	else
  	  render "/user/edit"
  	end
  end

end
