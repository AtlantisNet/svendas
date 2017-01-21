require 'test_helper'

class AcessosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acesso = acessos(:one)
  end

  test "should get index" do
    get acessos_url
    assert_response :success
  end

  test "should get new" do
    get new_acesso_url
    assert_response :success
  end

  test "should create acesso" do
    assert_difference('Acesso.count') do
      post acessos_url, params: { acesso: { ac_id: @acesso.ac_id, ac_tela: @acesso.ac_tela, ac_user: @acesso.ac_user } }
    end

    assert_redirected_to acesso_url(Acesso.last)
  end

  test "should show acesso" do
    get acesso_url(@acesso)
    assert_response :success
  end

  test "should get edit" do
    get edit_acesso_url(@acesso)
    assert_response :success
  end

  test "should update acesso" do
    patch acesso_url(@acesso), params: { acesso: { ac_id: @acesso.ac_id, ac_tela: @acesso.ac_tela, ac_user: @acesso.ac_user } }
    assert_redirected_to acesso_url(@acesso)
  end

  test "should destroy acesso" do
    assert_difference('Acesso.count', -1) do
      delete acesso_url(@acesso)
    end

    assert_redirected_to acessos_url
  end
end
