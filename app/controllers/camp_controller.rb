#coding: utf-8
class CampController < ApplicationController
  layout 'main'
  def about
  end
  
  def entry
  	@camp = Camp.new
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

  def camp
  end
end
