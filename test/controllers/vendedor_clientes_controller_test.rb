require 'test_helper'

class VendedorClientesControllerTest < ActionController::TestCase
  setup do
    @vendedor_cliente = vendedor_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendedor_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendedor_cliente" do
    assert_difference('VendedorCliente.count') do
      post :create, vendedor_cliente: { cliente_id: @vendedor_cliente.cliente_id, vendedor_id: @vendedor_cliente.vendedor_id }
    end

    assert_redirected_to vendedor_cliente_path(assigns(:vendedor_cliente))
  end

  test "should show vendedor_cliente" do
    get :show, id: @vendedor_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendedor_cliente
    assert_response :success
  end

  test "should update vendedor_cliente" do
    patch :update, id: @vendedor_cliente, vendedor_cliente: { cliente_id: @vendedor_cliente.cliente_id, vendedor_id: @vendedor_cliente.vendedor_id }
    assert_redirected_to vendedor_cliente_path(assigns(:vendedor_cliente))
  end

  test "should destroy vendedor_cliente" do
    assert_difference('VendedorCliente.count', -1) do
      delete :destroy, id: @vendedor_cliente
    end

    assert_redirected_to vendedor_clientes_path
  end
end
