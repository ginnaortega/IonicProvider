require 'test_helper'

class HuecosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hueco = huecos(:one)
  end

  test "should get index" do
    get huecos_url
    assert_response :success
  end

  test "should get new" do
    get new_hueco_url
    assert_response :success
  end

  test "should create hueco" do
    assert_difference('Hueco.count') do
      post huecos_url, params: { hueco: { direccion: @hueco.direccion, localidad: @hueco.localidad, ranking: @hueco.ranking, tamanio: @hueco.tamanio } }
    end

    assert_redirected_to hueco_url(Hueco.last)
  end

  test "should show hueco" do
    get hueco_url(@hueco)
    assert_response :success
  end

  test "should get edit" do
    get edit_hueco_url(@hueco)
    assert_response :success
  end

  test "should update hueco" do
    patch hueco_url(@hueco), params: { hueco: { direccion: @hueco.direccion, localidad: @hueco.localidad, ranking: @hueco.ranking, tamanio: @hueco.tamanio } }
    assert_redirected_to hueco_url(@hueco)
  end

  test "should destroy hueco" do
    assert_difference('Hueco.count', -1) do
      delete hueco_url(@hueco)
    end

    assert_redirected_to huecos_url
  end
end
