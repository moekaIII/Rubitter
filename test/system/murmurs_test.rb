require "application_system_test_case"

class MurmursTest < ApplicationSystemTestCase
  setup do
    @murmur = murmurs(:one)
  end

  test "visiting the index" do
    visit murmurs_url
    assert_selector "h1", text: "Murmurs"
  end

  test "creating a Murmur" do
    visit murmurs_url
    click_on "New Murmur"

    fill_in "Content", with: @murmur.content
    click_on "Create Murmur"

    assert_text "Murmur was successfully created"
    click_on "Back"
  end

  test "updating a Murmur" do
    visit murmurs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @murmur.content
    click_on "Update Murmur"

    assert_text "Murmur was successfully updated"
    click_on "Back"
  end

  test "destroying a Murmur" do
    visit murmurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Murmur was successfully destroyed"
  end
end
