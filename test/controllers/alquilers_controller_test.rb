require 'test_helper'

class AlquilersControllerTest < ActionController::TestCase
  setup do
    @alquiler = alquilers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alquilers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alquiler" do
    assert_difference('Alquiler.count') do
      post :create, alquiler: { cliente_id: @alquiler.cliente_id, fecha_in: @alquiler.fecha_in, fecha_out: @alquiler.fecha_out, num_alquiler: @alquiler.num_alquiler, pelicula_id: @alquiler.pelicula_id }
    end

    assert_redirected_to alquiler_path(assigns(:alquiler))
  end

  test "should show alquiler" do
    get :show, id: @alquiler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alquiler
    assert_response :success
  end

  test "should update alquiler" do
    patch :update, id: @alquiler, alquiler: { cliente_id: @alquiler.cliente_id, fecha_in: @alquiler.fecha_in, fecha_out: @alquiler.fecha_out, num_alquiler: @alquiler.num_alquiler, pelicula_id: @alquiler.pelicula_id }
    assert_redirected_to alquiler_path(assigns(:alquiler))
  end

  test "should destroy alquiler" do
    assert_difference('Alquiler.count', -1) do
      delete :destroy, id: @alquiler
    end

    assert_redirected_to alquilers_path
  end
end
