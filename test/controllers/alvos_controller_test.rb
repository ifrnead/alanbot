require 'test_helper'

class AlvosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alvos_index_url
    assert_response :success
  end

  test "should get edit" do
    get alvos_edit_url
    assert_response :success
  end

  test "should get show" do
    get alvos_show_url
    assert_response :success
  end

  test "should get new" do
    get alvos_new_url
    assert_response :success
  end

end
