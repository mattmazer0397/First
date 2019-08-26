require "application_system_test_case"

class MazersTest < ApplicationSystemTestCase
  setup do
    @mazer = mazers(:one)
  end

  test "visiting the index" do
    visit mazers_url
    assert_selector "h1", text: "Mazers"
  end

  test "creating a Mazer" do
    visit mazers_url
    click_on "New Mazer"

    fill_in "Name", with: @mazer.Name
    fill_in "Age", with: @mazer.age
    click_on "Create Mazer"

    assert_text "Mazer was successfully created"
    click_on "Back"
  end

  test "updating a Mazer" do
    visit mazers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mazer.Name
    fill_in "Age", with: @mazer.age
    click_on "Update Mazer"

    assert_text "Mazer was successfully updated"
    click_on "Back"
  end

  test "destroying a Mazer" do
    visit mazers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mazer was successfully destroyed"
  end
end
