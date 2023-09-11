require "test_helper"

class CmmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cmment = cmments(:one)
  end

  test "should get index" do
    get cmments_url
    assert_response :success
  end

  test "should get new" do
    get new_cmment_url
    assert_response :success
  end

  test "should create cmment" do
    assert_difference("Cmment.count") do
      post cmments_url, params: { cmment: { name3: @cmment.name3, stream3: @cmment.stream3 } }
    end

    assert_redirected_to cmment_url(Cmment.last)
  end

  test "should show cmment" do
    get cmment_url(@cmment)
    assert_response :success
  end

  test "should get edit" do
    get edit_cmment_url(@cmment)
    assert_response :success
  end

  test "should update cmment" do
    patch cmment_url(@cmment), params: { cmment: { name3: @cmment.name3, stream3: @cmment.stream3 } }
    assert_redirected_to cmment_url(@cmment)
  end

  test "should destroy cmment" do
    assert_difference("Cmment.count", -1) do
      delete cmment_url(@cmment)
    end

    assert_redirected_to cmments_url
  end
end
