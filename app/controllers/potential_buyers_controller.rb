class PotentialBuyersController < ApplicationController
  before_action :set_potential_buyer, only: [:show, :update, :destroy]

  # GET /potential_buyers
  def index
    @potential_buyers = PotentialBuyer.all

    render json: @potential_buyers
  end

  # GET /potential_buyers/1
  def show
    render json: @potential_buyer
  end

  # POST /potential_buyers
  def create
    @potential_buyer = PotentialBuyer.new(potential_buyer_params)

    if @potential_buyer.save
      render json: @potential_buyer, status: :created, location: @potential_buyer
    else
      render json: @potential_buyer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /potential_buyers/1
  def update
    if @potential_buyer.update(potential_buyer_params)
      render json: @potential_buyer
    else
      render json: @potential_buyer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /potential_buyers/1
  def destroy
    @potential_buyer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potential_buyer
      @potential_buyer = PotentialBuyer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def potential_buyer_params
      params.require(:potential_buyer).permit(:user_id, :house_id)
    end
end
