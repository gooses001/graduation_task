class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def index
    @requests =Request.all
  end


  def new
    @request = Request.new
  end


  def create
    @request = Request.new(request_params)
      if@request.save
        redirect_to requests_path, notice:"申請書を作成しました"
      else
        render'new'
      end
  end


  def show
    @request = Request.find(params[:id])
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      redirect_to requests_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @request.destroy
    redirect_to requests_path, notice:"申請を削除しました"
  end


  private


  def request_params
    params.require(:request).permit(:date,
    :name,
    :email,
    :department,
    :phone,
    :manager,
    :chief,
    :mailing,
    :purpose,
    :reason,
    :range,
    :content,
    :user,
    :status,
    :managecheck,
    :chiefcheck)
  end

  def set_request
    @request = Request.find(params[:id])
  end

end
