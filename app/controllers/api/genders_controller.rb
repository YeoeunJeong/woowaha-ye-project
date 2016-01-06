module Api
  class GendersController < ApplicationController
    respond_to :json

    def index
      @genders = Gender.all
      respond_with(@genders)
    end

    def show
      @gender = Gender.find(params[:id])
      respond_with(@gender)
    end
  end
end
