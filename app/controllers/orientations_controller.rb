# coding: utf-8
class OrientationsController < ApplicationController
   layout 'main'
  # GET /orientations
  # GET /orientations.json
  def index
    @orientations = Orientation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orientations }
    end
  end

  # GET /orientations/1
  # GET /orientations/1.json
  def show
    @orientation = Orientation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orientation }
    end
  end

  # GET /orientations/new
  # GET /orientations/new.json
  def new
    @orientation = Orientation.new
    @meeting = Meeting.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orientation }
    end
  end

  # GET /orientations/1/edit
  def edit
    @orientation = Orientation.find(params[:id])
    @meeting = Meeting.all
  end

  # POST /orientations
  # POST /orientations.json
  def create
    @orientation = Orientation.new(params[:orientation])
    @orientation.user_id = current_user.id
    @orientation.state = 1
    if @orientation.save
      flash[:notice] = "予約手続き完了しました！"
      redirect_to :controller => 'home'
    else
      format.html { render action: "new" }
      format.json { render json: @orientation.errors, status: :unprocessable_entity }
    end
  end

  # PUT /orientations/1
  # PUT /orientations/1.json
  def update
    @orientation = Orientation.find(params[:id])
    if @orientation.update_attributes(params[:orientation])
      flash[:notice] = '予約内容を更新しました！'
      redirect_to :controller => 'home'
    else
      format.html { render action: "edit" }
      format.json { render json: @orientation.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /orientations/1
  # DELETE /orientations/1.json
  def destroy
    @orientation = Orientation.find(params[:id])
    @orientation.destroy

    respond_to do |format|
      format.html { redirect_to orientations_url }
      format.json { head :no_content }
    end
  end
end
