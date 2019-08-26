require 'test_helper'

class MazersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mazer = mazers(:one)
  end

  test "should get index" do
    get mazers_url
    assert_response :success
  end

  test "should get new" do
    get new_mazer_url
    assert_response :success
  end

  test "should create mazer" do
    assert_difference('Mazer.count') do
      post mazers_url, params: { mazer: { Name: @mazer.Name, age: @mazer.age } }
    end

    assert_redirected_to mazer_url(Mazer.last)
  end

  test "should show mazer" do
    get mazer_url(@mazer)
    assert_response :success
  end

  test "should get edit" do
    get edit_mazer_url(@mazer)
    assert_response :success
  end

  test "should update mazer" do
    patch mazer_url(@mazer), params: { mazer: { Name: @mazer.Name, age: @mazer.age } }
    assert_redirected_to mazer_url(@mazer)
  end

  test "should destroy mazer" do
    assert_difference('Mazer.count', -1) do
      delete mazer_url(@mazer)
    end

    assert_redirected_to mazers_url
  end
end
