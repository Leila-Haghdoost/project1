require 'test_helper'

class FavlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favlists_index_url
    assert_response :success
  end

  test "should get show" do
    get favlists_show_url
    assert_response :success
  end

  test "should get new" do
    get favlists_new_url
    assert_response :success
  end

  test "should get create" do
    get favlists_create_url
    assert_response :success
  end

  test "should get edit" do
    get favlists_edit_url
    assert_response :success
  end

  test "should get update" do
    get favlists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get favlists_destroy_url
    assert_response :success
  end

end
