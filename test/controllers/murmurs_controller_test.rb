require 'test_helper'

class MurmursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @murmur = murmurs(:one)
  end

  test "should get index" do
    get murmurs_url
    assert_response :success
  end

  test "should get new" do
    get new_murmur_url
    assert_response :success
  end

  test "should create murmur" do
    assert_difference('Murmur.count') do
      post murmurs_url, params: { murmur: { content: @murmur.content } }
    end

    assert_redirected_to murmur_url(Murmur.last)
  end

  test "should show murmur" do
    get murmur_url(@murmur)
    assert_response :success
  end

  test "should get edit" do
    get edit_murmur_url(@murmur)
    assert_response :success
  end

  test "should update murmur" do
    patch murmur_url(@murmur), params: { murmur: { content: @murmur.content } }
    assert_redirected_to murmur_url(@murmur)
  end

  test "should destroy murmur" do
    assert_difference('Murmur.count', -1) do
      delete murmur_url(@murmur)
    end

    assert_redirected_to murmurs_url
  end
end
