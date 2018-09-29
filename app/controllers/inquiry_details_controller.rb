class InquiryDetailsController < ApplicationController
  before_action :set_inquiry_detail, only: [:show, :update, :destroy]

  # GET /inquiry_details
  def index
    @inquiry_details = InquiryDetail.all

    render json: @inquiry_details
  end

  # GET /inquiry_details/1
  def show
    render json: @inquiry_detail
  end

  # POST /inquiry_details
  def create
    @inquiry_detail = InquiryDetail.new(inquiry_detail_params)

    if @inquiry_detail.save
      render json: @inquiry_detail, status: :created, location: @inquiry_detail
    else
      render json: @inquiry_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inquiry_details/1
  def update
    if @inquiry_detail.update(inquiry_detail_params)
      render json: @inquiry_detail
    else
      render json: @inquiry_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inquiry_details/1
  def destroy
    @inquiry_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry_detail
      @inquiry_detail = InquiryDetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inquiry_detail_params
      params.require(:inquiry_detail).permit(:content, :subject, :house_id, :user_id)
    end
end
