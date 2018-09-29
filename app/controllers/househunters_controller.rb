class HousehuntersController < ApplicationController
  before_action :set_househunter, only: [:show, :update, :destroy]

  # GET /househunters
  def index
    @househunters = Househunter.all

    render json: @househunters
  end

  # GET /househunters/1
  def show
    render json: @househunter
  end

  # POST /househunters
  def create
    @househunter = Househunter.new(househunter_params)

    if @househunter.save
      render json: @househunter, status: :created, location: @househunter
    else
      render json: @househunter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /househunters/1
  def update
    if @househunter.update(househunter_params)
      render json: @househunter
    else
      render json: @househunter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /househunters/1
  def destroy
    @househunter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_househunter
      @househunter = Househunter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def househunter_params
      params.require(:househunter).permit(:phone, :preferred_contact, :user_id)
    end
end
