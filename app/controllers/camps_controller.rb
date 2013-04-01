#coding: utf-8
class CampsController < ApplicationController
  layout 'main'
  def about
  end
  
  def new
  	@camp = Camp.new
  	@cource = Cource.all
  end

  def create
  	@camp = Camp.new(params[:camp])
    @camp.user_id = current_user.id
    if @camp.save
      flash[:notice] = "予約手続き完了しました！"
      redirect_to :controller => 'home'
    else
      format.html { render action: "new" }
    end
  end

  def edit
  	@camp = Camp.find(params[:id])
  	@cource = Cource.all
  end

  def update
    @camp = Camp.find(params[:id])
    if @camp.update_attributes(params[:camp])
      flash[:notice] = '予約内容を更新しました！'
      redirect_to :controller => 'home'
    else
      format.html { render action: "edit" }
    end
  end

  def camp
  end
end
