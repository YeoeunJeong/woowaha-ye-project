class CosmsController < ApplicationController
  before_action :set_cosm, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cosms = Cosm.all
    respond_with(@cosms)
  end

  def show
    respond_with(@cosm)
  end

  def new
    @cosm = Cosm.new
    respond_with(@cosm)
  end

  def edit
  end

  def create
    @cosm = Cosm.new(cosm_params)
    @cosm.save
    respond_with(@cosm)
  end

  def update
    @cosm.update(cosm_params)
    respond_with(@cosm)
  end

  def destroy
    @cosm.destroy
    respond_with(@cosm)
  end

  private

  def set_cosm
    @cosm = Cosm.find(params[:id])
  end

  def cosm_params
    params.require(:cosm).permit(:name, :price, :brand_id, :use_id, :gender_id)
  end
end
