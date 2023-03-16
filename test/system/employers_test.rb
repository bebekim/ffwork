require "application_system_test_case"

class EmployersTest < ApplicationSystemTestCase
  setup do
    @employer = employers(:one)
  end

  test "visiting the index" do
    visit employers_url
    assert_selector "h1", text: "Employers"
  end

  test "should create employer" do
    visit employers_url
    click_on "New employer"

    fill_in "Category", with: @employer.category
    fill_in "Certified year", with: @employer.certified_year
    fill_in "Name", with: @employer.name
    click_on "Create Employer"

    assert_text "Employer was successfully created"
    click_on "Back"
  end

  test "should update Employer" do
    visit employer_url(@employer)
    click_on "Edit this employer", match: :first

    fill_in "Category", with: @employer.category
    fill_in "Certified year", with: @employer.certified_year
    fill_in "Name", with: @employer.name
    click_on "Update Employer"

    assert_text "Employer was successfully updated"
    click_on "Back"
  end

  test "should destroy Employer" do
    visit employer_url(@employer)
    click_on "Destroy this employer", match: :first

    assert_text "Employer was successfully destroyed"
  end
end
