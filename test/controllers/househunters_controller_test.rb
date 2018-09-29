require 'test_helper'

class HousehuntersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @househunter = househunters(:one)
  end

  test "should get index" do
    get househunters_url, as: :json
    assert_response :success
  end

  test "should create househunter" do
    assert_difference('Househunter.count') do
      post househunters_url, params: { househunter: { phone: @househunter.phone, preferred_contact: @househunter.preferred_contact, user_id: @househunter.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show househunter" do
    get househunter_url(@househunter), as: :json
    assert_response :success
  end

  test "should update househunter" do
    patch househunter_url(@househunter), params: { househunter: { phone: @househunter.phone, preferred_contact: @househunter.preferred_contact, user_id: @househunter.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy househunter" do
    assert_difference('Househunter.count', -1) do
      delete househunter_url(@househunter), as: :json
    end

    assert_response 204
  end
end
