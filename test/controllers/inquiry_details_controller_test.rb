require 'test_helper'

class InquiryDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquiry_detail = inquiry_details(:one)
  end

  test "should get index" do
    get inquiry_details_url, as: :json
    assert_response :success
  end

  test "should create inquiry_detail" do
    assert_difference('InquiryDetail.count') do
      post inquiry_details_url, params: { inquiry_detail: { content: @inquiry_detail.content, house_id: @inquiry_detail.house_id, subject: @inquiry_detail.subject, user_id: @inquiry_detail.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inquiry_detail" do
    get inquiry_detail_url(@inquiry_detail), as: :json
    assert_response :success
  end

  test "should update inquiry_detail" do
    patch inquiry_detail_url(@inquiry_detail), params: { inquiry_detail: { content: @inquiry_detail.content, house_id: @inquiry_detail.house_id, subject: @inquiry_detail.subject, user_id: @inquiry_detail.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy inquiry_detail" do
    assert_difference('InquiryDetail.count', -1) do
      delete inquiry_detail_url(@inquiry_detail), as: :json
    end

    assert_response 204
  end
end
