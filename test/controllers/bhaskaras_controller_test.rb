require 'test_helper'

class BhaskarasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bhaskara = bhaskaras(:one)
  end

  test "should get index" do
    get bhaskaras_url
    assert_response :success
  end

  test "should get new" do
    get new_bhaskara_url
    assert_response :success
  end

  test "should create bhaskara" do
    assert_difference('Bhaskara.count') do
      post bhaskaras_url, params: { bhaskara: { a: @bhaskara.a, b: @bhaskara.b, c: @bhaskara.c } }
    end

    assert_redirected_to bhaskara_url(Bhaskara.last)
  end

  test "should show bhaskara" do
    get bhaskara_url(@bhaskara)
    assert_response :success
  end

  test "should get edit" do
    get edit_bhaskara_url(@bhaskara)
    assert_response :success
  end

  test "should update bhaskara" do
    patch bhaskara_url(@bhaskara), params: { bhaskara: { a: @bhaskara.a, b: @bhaskara.b, c: @bhaskara.c } }
    assert_redirected_to bhaskara_url(@bhaskara)
  end

  test "should destroy bhaskara" do
    assert_difference('Bhaskara.count', -1) do
      delete bhaskara_url(@bhaskara)
    end

    assert_redirected_to bhaskaras_url
  end
end
