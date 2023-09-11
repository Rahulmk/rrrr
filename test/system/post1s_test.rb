require "application_system_test_case"

class Post1sTest < ApplicationSystemTestCase
  setup do
    @post1 = post1s(:one)
  end

  test "visiting the index" do
    visit post1s_url
    assert_selector "h1", text: "Post1s"
  end

  test "should create post1" do
    visit post1s_url
    click_on "New post1"

    fill_in "Name2", with: @post1.name2
    fill_in "Stream2", with: @post1.stream2
    click_on "Create Post1"

    assert_text "Post1 was successfully created"
    click_on "Back"
  end

  test "should update Post1" do
    visit post1_url(@post1)
    click_on "Edit this post1", match: :first

    fill_in "Name2", with: @post1.name2
    fill_in "Stream2", with: @post1.stream2
    click_on "Update Post1"

    assert_text "Post1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Post1" do
    visit post1_url(@post1)
    click_on "Destroy this post1", match: :first

    assert_text "Post1 was successfully destroyed"
  end
end
