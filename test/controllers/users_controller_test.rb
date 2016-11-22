require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { account_status: @user.account_status, auth_type: @user.auth_type, date_created: @user.date_created, email: @user.email, language: @user.language, login_status: @user.login_status, name: @user.name, org_id: @user.org_id, organic_rank: @user.organic_rank, rank_boost: @user.rank_boost, status: @user.status, timezone: @user.timezone } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { account_status: @user.account_status, auth_type: @user.auth_type, date_created: @user.date_created, email: @user.email, language: @user.language, login_status: @user.login_status, name: @user.name, org_id: @user.org_id, organic_rank: @user.organic_rank, rank_boost: @user.rank_boost, status: @user.status, timezone: @user.timezone } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
