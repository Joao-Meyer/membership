require "application_system_test_case"

class MemberCommunicantsTest < ApplicationSystemTestCase
  setup do
    @member_communicant = member_communicants(:one)
  end

  test "visiting the index" do
    visit member_communicants_url
    assert_selector "h1", text: "Member communicants"
  end

  test "should create member communicant" do
    visit member_communicants_url
    click_on "New member communicant"

    fill_in "Address", with: @member_communicant.address
    fill_in "Admitted by", with: @member_communicant.admitted_by
    fill_in "Birth date", with: @member_communicant.birth_date
    fill_in "Book number", with: @member_communicant.book_number
    fill_in "City", with: @member_communicant.city
    fill_in "Father name", with: @member_communicant.father_name
    fill_in "Marital partner", with: @member_communicant.marital_partner
    fill_in "Marital status", with: @member_communicant.marital_status
    fill_in "Minister rev", with: @member_communicant.minister_rev
    fill_in "Mother name", with: @member_communicant.mother_name
    fill_in "Name", with: @member_communicant.name
    fill_in "Nationality", with: @member_communicant.nationality
    fill_in "Naturality", with: @member_communicant.naturality
    fill_in "Neighborhood", with: @member_communicant.neighborhood
    fill_in "Number", with: @member_communicant.number
    fill_in "Observation", with: @member_communicant.observation
    fill_in "Partner religious confession", with: @member_communicant.partner_religious_confession
    fill_in "Phone", with: @member_communicant.phone
    fill_in "Profession", with: @member_communicant.profession
    fill_in "Reception date", with: @member_communicant.reception_date
    fill_in "Record number", with: @member_communicant.record_number
    fill_in "Scholarship", with: @member_communicant.scholarship
    fill_in "Sex", with: @member_communicant.sex
    fill_in "Surname", with: @member_communicant.surname
    fill_in "Telephone", with: @member_communicant.telephone
    fill_in "Uf", with: @member_communicant.uf
    fill_in "Zip code", with: @member_communicant.zip_code
    click_on "Create Member communicant"

    assert_text "Member communicant was successfully created"
    click_on "Back"
  end

  test "should update Member communicant" do
    visit member_communicant_url(@member_communicant)
    click_on "Edit this member communicant", match: :first

    fill_in "Address", with: @member_communicant.address
    fill_in "Admitted by", with: @member_communicant.admitted_by
    fill_in "Birth date", with: @member_communicant.birth_date
    fill_in "Book number", with: @member_communicant.book_number
    fill_in "City", with: @member_communicant.city
    fill_in "Father name", with: @member_communicant.father_name
    fill_in "Marital partner", with: @member_communicant.marital_partner
    fill_in "Marital status", with: @member_communicant.marital_status
    fill_in "Minister rev", with: @member_communicant.minister_rev
    fill_in "Mother name", with: @member_communicant.mother_name
    fill_in "Name", with: @member_communicant.name
    fill_in "Nationality", with: @member_communicant.nationality
    fill_in "Naturality", with: @member_communicant.naturality
    fill_in "Neighborhood", with: @member_communicant.neighborhood
    fill_in "Number", with: @member_communicant.number
    fill_in "Observation", with: @member_communicant.observation
    fill_in "Partner religious confession", with: @member_communicant.partner_religious_confession
    fill_in "Phone", with: @member_communicant.phone
    fill_in "Profession", with: @member_communicant.profession
    fill_in "Reception date", with: @member_communicant.reception_date
    fill_in "Record number", with: @member_communicant.record_number
    fill_in "Scholarship", with: @member_communicant.scholarship
    fill_in "Sex", with: @member_communicant.sex
    fill_in "Surname", with: @member_communicant.surname
    fill_in "Telephone", with: @member_communicant.telephone
    fill_in "Uf", with: @member_communicant.uf
    fill_in "Zip code", with: @member_communicant.zip_code
    click_on "Update Member communicant"

    assert_text "Member communicant was successfully updated"
    click_on "Back"
  end

  test "should destroy Member communicant" do
    visit member_communicant_url(@member_communicant)
    click_on "Destroy this member communicant", match: :first

    assert_text "Member communicant was successfully destroyed"
  end
end
