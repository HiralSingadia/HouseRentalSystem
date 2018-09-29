class InquiryRepliesController < ApplicationController
  before_action :set_inquiry_reply, only: [:show, :update, :destroy]

  # GET /inquiry_replies
  def index
    @inquiry_replies = InquiryReply.all

    render json: @inquiry_replies
  end

  # GET /inquiry_replies/1
  def show
    render json: @inquiry_reply
  end

  # POST /inquiry_replies
  def create
    @inquiry_reply = InquiryReply.new(inquiry_reply_params)

    if @inquiry_reply.save
      render json: @inquiry_reply, status: :created, location: @inquiry_reply
    else
      render json: @inquiry_reply.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inquiry_replies/1
  def update
    if @inquiry_reply.update(inquiry_reply_params)
      render json: @inquiry_reply
    else
      render json: @inquiry_reply.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inquiry_replies/1
  def destroy
    @inquiry_reply.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry_reply
      @inquiry_reply = InquiryReply.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inquiry_reply_params
      params.require(:inquiry_reply).permit(:reply, :user_id, :inquiry_detail_id)
    end
end
