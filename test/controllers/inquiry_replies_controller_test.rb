require 'test_helper'

class InquiryRepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquiry_reply = inquiry_replies(:one)
  end

  test "should get index" do
    get inquiry_replies_url, as: :json
    assert_response :success
  end

  test "should create inquiry_reply" do
    assert_difference('InquiryReply.count') do
      post inquiry_replies_url, params: { inquiry_reply: { inquiry_detail_id: @inquiry_reply.inquiry_detail_id, reply: @inquiry_reply.reply, user_id: @inquiry_reply.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inquiry_reply" do
    get inquiry_reply_url(@inquiry_reply), as: :json
    assert_response :success
  end

  test "should update inquiry_reply" do
    patch inquiry_reply_url(@inquiry_reply), params: { inquiry_reply: { inquiry_detail_id: @inquiry_reply.inquiry_detail_id, reply: @inquiry_reply.reply, user_id: @inquiry_reply.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy inquiry_reply" do
    assert_difference('InquiryReply.count', -1) do
      delete inquiry_reply_url(@inquiry_reply), as: :json
    end

    assert_response 204
  end
end
