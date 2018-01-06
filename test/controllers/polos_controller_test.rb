require 'test_helper'

class PolosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polo = polos(:one)
  end

  test "should get index" do
    get polos_url
    assert_response :success
  end

  test "should get new" do
    get new_polo_url
    assert_response :success
  end

  test "should create polo" do
    assert_difference('Polo.count') do
      post polos_url, params: { polo: { nome: @polo.nome } }
    end

    assert_redirected_to polo_url(Polo.last)
  end

  test "should show polo" do
    get polo_url(@polo)
    assert_response :success
  end

  test "should get edit" do
    get edit_polo_url(@polo)
    assert_response :success
  end

  test "should update polo" do
    patch polo_url(@polo), params: { polo: { nome: @polo.nome } }
    assert_redirected_to polo_url(@polo)
  end

  test "should destroy polo" do
    assert_difference('Polo.count', -1) do
      delete polo_url(@polo)
    end

    assert_redirected_to polos_url
  end
end
