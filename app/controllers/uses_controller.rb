class UsesController < ApplicationController
  before_action :set_use, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @uses = Use.all
    respond_with(@uses)
  end

  def show
    respond_with(@use)
  end

  def new
    @use = Use.new
    respond_with(@use)
  end

  def edit
  end

  def create
    @use = Use.new(use_params)
    @use.save
    respond_with(@use)
  end

  def update
    @use.update(use_params)
    respond_with(@use)
  end

  def destroy
    @use.destroy
    respond_with(@use)
  end

  private

  def set_use
    @use = Use.find(params[:id])
  end

  def use_params
    params.require(:use).permit(:cate)
  end
end
