require 'test_helper'

class ViewStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @view_status = view_statuses(:one)
  end

  test "should get index" do
    get view_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_view_status_url
    assert_response :success
  end

  test "should create view_status" do
    assert_difference('ViewStatus.count') do
      post view_statuses_url, params: { view_status: { item_id: @view_status.item_id, status: @view_status.status, user_id: @view_status.user_id } }
    end

    assert_redirected_to view_status_url(ViewStatus.last)
  end

  test "should show view_status" do
    get view_status_url(@view_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_view_status_url(@view_status)
    assert_response :success
  end

  test "should update view_status" do
    patch view_status_url(@view_status), params: { view_status: { item_id: @view_status.item_id, status: @view_status.status, user_id: @view_status.user_id } }
    assert_redirected_to view_status_url(@view_status)
  end

  test "should destroy view_status" do
    assert_difference('ViewStatus.count', -1) do
      delete view_status_url(@view_status)
    end

    assert_redirected_to view_statuses_url
  end
end
