require "test_helper"

class Member::CommunicantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_communicant = member_communicants(:one)
  end

  test "should get index" do
    get member_communicants_url
    assert_response :success
  end

  test "should get new" do
    get new_member_communicant_url
    assert_response :success
  end

  test "should create member_communicant" do
    assert_difference("Member::Communicant.count") do
      post member_communicants_url, params: { member_communicant: { admitted_by: @member_communicant.admitted_by, marital_partner: @member_communicant.marital_partner, marital_status: @member_communicant.marital_status, partner_religious_confession: @member_communicant.partner_religious_confession, profession: @member_communicant.profession } }
    end

    assert_redirected_to member_communicant_url(Member::Communicant.last)
  end

  test "should show member_communicant" do
    get member_communicant_url(@member_communicant)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_communicant_url(@member_communicant)
    assert_response :success
  end

  test "should update member_communicant" do
    patch member_communicant_url(@member_communicant), params: { member_communicant: { admitted_by: @member_communicant.admitted_by, marital_partner: @member_communicant.marital_partner, marital_status: @member_communicant.marital_status, partner_religious_confession: @member_communicant.partner_religious_confession, profession: @member_communicant.profession } }
    assert_redirected_to member_communicant_url(@member_communicant)
  end

  test "should destroy member_communicant" do
    assert_difference("Member::Communicant.count", -1) do
      delete member_communicant_url(@member_communicant)
    end

    assert_redirected_to member_communicants_url
  end
end
