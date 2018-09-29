require 'test_helper'

class PotentialBuyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @potential_buyer = potential_buyers(:one)
  end

  test "should get index" do
    get potential_buyers_url, as: :json
    assert_response :success
  end

  test "should create potential_buyer" do
    assert_difference('PotentialBuyer.count') do
      post potential_buyers_url, params: { potential_buyer: { house_id: @potential_buyer.house_id, user_id: @potential_buyer.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show potential_buyer" do
    get potential_buyer_url(@potential_buyer), as: :json
    assert_response :success
  end

  test "should update potential_buyer" do
    patch potential_buyer_url(@potential_buyer), params: { potential_buyer: { house_id: @potential_buyer.house_id, user_id: @potential_buyer.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy potential_buyer" do
    assert_difference('PotentialBuyer.count', -1) do
      delete potential_buyer_url(@potential_buyer), as: :json
    end

    assert_response 204
  end
end
