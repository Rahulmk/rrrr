require "application_system_test_case"

class CmmentsTest < ApplicationSystemTestCase
  setup do
    @cmment = cmments(:one)
  end

  test "visiting the index" do
    visit cmments_url
    assert_selector "h1", text: "Cmments"
  end

  test "should create cmment" do
    visit cmments_url
    click_on "New cmment"

    fill_in "Name3", with: @cmment.name3
    fill_in "Stream3", with: @cmment.stream3
    click_on "Create Cmment"

    assert_text "Cmment was successfully created"
    click_on "Back"
  end

  test "should update Cmment" do
    visit cmment_url(@cmment)
    click_on "Edit this cmment", match: :first

    fill_in "Name3", with: @cmment.name3
    fill_in "Stream3", with: @cmment.stream3
    click_on "Update Cmment"

    assert_text "Cmment was successfully updated"
    click_on "Back"
  end

  test "should destroy Cmment" do
    visit cmment_url(@cmment)
    click_on "Destroy this cmment", match: :first

    assert_text "Cmment was successfully destroyed"
  end
end
