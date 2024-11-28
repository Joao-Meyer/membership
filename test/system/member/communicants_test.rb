require "application_system_test_case"

class Member::CommunicantsTest < ApplicationSystemTestCase
  setup do
    @member_communicant = member_communicants(:one)
  end

  test "visiting the index" do
    visit member_communicants_url
    assert_selector "h1", text: "Communicants"
  end

  test "should create communicant" do
    visit member_communicants_url
    click_on "New communicant"

    fill_in "Admitted by", with: @member_communicant.admitted_by
    fill_in "Marital partner", with: @member_communicant.marital_partner
    fill_in "Marital status", with: @member_communicant.marital_status
    fill_in "Partner religious confession", with: @member_communicant.partner_religious_confession
    fill_in "Profession", with: @member_communicant.profession
    click_on "Create Communicant"

    assert_text "Communicant was successfully created"
    click_on "Back"
  end

  test "should update Communicant" do
    visit member_communicant_url(@member_communicant)
    click_on "Edit this communicant", match: :first

    fill_in "Admitted by", with: @member_communicant.admitted_by
    fill_in "Marital partner", with: @member_communicant.marital_partner
    fill_in "Marital status", with: @member_communicant.marital_status
    fill_in "Partner religious confession", with: @member_communicant.partner_religious_confession
    fill_in "Profession", with: @member_communicant.profession
    click_on "Update Communicant"

    assert_text "Communicant was successfully updated"
    click_on "Back"
  end

  test "should destroy Communicant" do
    visit member_communicant_url(@member_communicant)
    click_on "Destroy this communicant", match: :first

    assert_text "Communicant was successfully destroyed"
  end
end
