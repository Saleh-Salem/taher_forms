require "application_system_test_case"

class StudentInfosTest < ApplicationSystemTestCase
  setup do
    @student_info = student_infos(:one)
  end

  test "visiting the index" do
    visit student_infos_url
    assert_selector "h1", text: "Student infos"
  end

  test "should create student info" do
    visit student_infos_url
    click_on "New student info"

    fill_in "Address", with: @student_info.address
    fill_in "Age", with: @student_info.age
    fill_in "First name", with: @student_info.first_name
    fill_in "Geneder", with: @student_info.geneder
    fill_in "Last name", with: @student_info.last_name
    fill_in "Matrial status", with: @student_info.matrial_status
    fill_in "Occuption", with: @student_info.occuption
    click_on "Create Student info"

    assert_text "Student info was successfully created"
    click_on "Back"
  end

  test "should update Student info" do
    visit student_info_url(@student_info)
    click_on "Edit this student info", match: :first

    fill_in "Address", with: @student_info.address
    fill_in "Age", with: @student_info.age
    fill_in "First name", with: @student_info.first_name
    fill_in "Geneder", with: @student_info.geneder
    fill_in "Last name", with: @student_info.last_name
    fill_in "Matrial status", with: @student_info.matrial_status
    fill_in "Occuption", with: @student_info.occuption
    click_on "Update Student info"

    assert_text "Student info was successfully updated"
    click_on "Back"
  end

  test "should destroy Student info" do
    visit student_info_url(@student_info)
    click_on "Destroy this student info", match: :first

    assert_text "Student info was successfully destroyed"
  end
end
