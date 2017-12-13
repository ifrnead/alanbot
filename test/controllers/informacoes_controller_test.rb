require 'test_helper'

class InformacoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get informacoes_index_url
    assert_response :success
  end

  test "should get edit" do
    get informacoes_edit_url
    assert_response :success
  end

  test "should get show" do
    get informacoes_show_url
    assert_response :success
  end

  test "should get new" do
    get informacoes_new_url
    assert_response :success
  end

end
