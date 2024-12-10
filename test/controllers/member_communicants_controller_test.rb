require "test_helper"

class MemberCommunicantsControllerTest < ActionDispatch::IntegrationTest
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
    assert_difference("MemberCommunicant.count") do
      post member_communicants_url, params: { member_communicant: { address: @member_communicant.address, admitted_by: @member_communicant.admitted_by, birth_date: @member_communicant.birth_date, book_number: @member_communicant.book_number, city: @member_communicant.city, father_name: @member_communicant.father_name, marital_partner: @member_communicant.marital_partner, marital_status: @member_communicant.marital_status, minister_rev: @member_communicant.minister_rev, mother_name: @member_communicant.mother_name, name: @member_communicant.name, nationality: @member_communicant.nationality, naturality: @member_communicant.naturality, neighborhood: @member_communicant.neighborhood, number: @member_communicant.number, observation: @member_communicant.observation, partner_religious_confession: @member_communicant.partner_religious_confession, phone: @member_communicant.phone, profession: @member_communicant.profession, reception_date: @member_communicant.reception_date, record_number: @member_communicant.record_number, scholarship: @member_communicant.scholarship, sex: @member_communicant.sex, surname: @member_communicant.surname, telephone: @member_communicant.telephone, uf: @member_communicant.uf, zip_code: @member_communicant.zip_code } }
    end

    assert_redirected_to member_communicant_url(MemberCommunicant.last)
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
    patch member_communicant_url(@member_communicant), params: { member_communicant: { address: @member_communicant.address, admitted_by: @member_communicant.admitted_by, birth_date: @member_communicant.birth_date, book_number: @member_communicant.book_number, city: @member_communicant.city, father_name: @member_communicant.father_name, marital_partner: @member_communicant.marital_partner, marital_status: @member_communicant.marital_status, minister_rev: @member_communicant.minister_rev, mother_name: @member_communicant.mother_name, name: @member_communicant.name, nationality: @member_communicant.nationality, naturality: @member_communicant.naturality, neighborhood: @member_communicant.neighborhood, number: @member_communicant.number, observation: @member_communicant.observation, partner_religious_confession: @member_communicant.partner_religious_confession, phone: @member_communicant.phone, profession: @member_communicant.profession, reception_date: @member_communicant.reception_date, record_number: @member_communicant.record_number, scholarship: @member_communicant.scholarship, sex: @member_communicant.sex, surname: @member_communicant.surname, telephone: @member_communicant.telephone, uf: @member_communicant.uf, zip_code: @member_communicant.zip_code } }
    assert_redirected_to member_communicant_url(@member_communicant)
  end

  test "should destroy member_communicant" do
    assert_difference("MemberCommunicant.count", -1) do
      delete member_communicant_url(@member_communicant)
    end

    assert_redirected_to member_communicants_url
  end
end
