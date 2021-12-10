require "test_helper"

class FrienddbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frienddb = frienddbs(:one)
  end

  test "should get index" do
    get frienddbs_url
    assert_response :success
  end

  test "should get new" do
    get new_frienddb_url
    assert_response :success
  end

  test "should create frienddb" do
    assert_difference('Frienddb.count') do
      post frienddbs_url, params: { frienddb: { email: @frienddb.email, first_name: @frienddb.first_name, last_name: @frienddb.last_name, phone: @frienddb.phone, twitter: @frienddb.twitter } }
    end

    assert_redirected_to frienddb_url(Frienddb.last)
  end

  test "should show frienddb" do
    get frienddb_url(@frienddb)
    assert_response :success
  end

  test "should get edit" do
    get edit_frienddb_url(@frienddb)
    assert_response :success
  end

  test "should update frienddb" do
    patch frienddb_url(@frienddb), params: { frienddb: { email: @frienddb.email, first_name: @frienddb.first_name, last_name: @frienddb.last_name, phone: @frienddb.phone, twitter: @frienddb.twitter } }
    assert_redirected_to frienddb_url(@frienddb)
  end

  test "should destroy frienddb" do
    assert_difference('Frienddb.count', -1) do
      delete frienddb_url(@frienddb)
    end

    assert_redirected_to frienddbs_url
  end
end
