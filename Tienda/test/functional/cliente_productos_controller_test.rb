require 'test_helper'

class ClienteProductosControllerTest < ActionController::TestCase
  setup do
    @cliente_producto = cliente_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_producto" do
    assert_difference('ClienteProducto.count') do
      post :create, cliente_producto: @cliente_producto.attributes
    end

    assert_redirected_to cliente_producto_path(assigns(:cliente_producto))
  end

  test "should show cliente_producto" do
    get :show, id: @cliente_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_producto
    assert_response :success
  end

  test "should update cliente_producto" do
    put :update, id: @cliente_producto, cliente_producto: @cliente_producto.attributes
    assert_redirected_to cliente_producto_path(assigns(:cliente_producto))
  end

  test "should destroy cliente_producto" do
    assert_difference('ClienteProducto.count', -1) do
      delete :destroy, id: @cliente_producto
    end

    assert_redirected_to cliente_productos_path
  end
end
