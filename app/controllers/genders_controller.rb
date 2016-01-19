class GendersController < ApplicationController
  before_action :set_gender, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @genders = Gender.all
    respond_with(@genders)
  end

  def show
    @gender = Gender.find(params[:id])
    @cosms = Cosm.where(gender_id: @gender.id)
    # @cosms = Cosm.find(:all, :conditions => ["gender_id IN (?)", @gender.id])
    # @cosms = Cosm.find_by(:all, gender_id: :id)
    # respond_with(@gender)
    respond_with(@cosms)
  end

  def new
    @gender = Gender.new
    respond_with(@gender)
  end

  def edit
  end

  def create
    @gender = Gender.new(gender_params)
    @gender.save
    respond_with(@gender)
  end

  def update
    @gender.update(gender_params)
    respond_with(@gender)
  end

  def destroy
    @gender.destroy
    respond_with(@gender)
  end

  private

  def set_gender
    @gender = Gender.find(params[:id])
  end

  def gender_params
    params.require(:gender).permit(:cate)
  end
end
