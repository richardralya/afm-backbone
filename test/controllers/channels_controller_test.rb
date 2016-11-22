require 'test_helper'

class ChannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @channel = channels(:one)
  end

  test "should get index" do
    get channels_url
    assert_response :success
  end

  test "should get new" do
    get new_channel_url
    assert_response :success
  end

  test "should create channel" do
    assert_difference('Channel.count') do
      post channels_url, params: { channel: { content: @channel.content, date_created: @channel.date_created, date_modified: @channel.date_modified, is_private: @channel.is_private, name: @channel.name, status: @channel.status, ui_content: @channel.ui_content, user_id: @channel.user_id } }
    end

    assert_redirected_to channel_url(Channel.last)
  end

  test "should show channel" do
    get channel_url(@channel)
    assert_response :success
  end

  test "should get edit" do
    get edit_channel_url(@channel)
    assert_response :success
  end

  test "should update channel" do
    patch channel_url(@channel), params: { channel: { content: @channel.content, date_created: @channel.date_created, date_modified: @channel.date_modified, is_private: @channel.is_private, name: @channel.name, status: @channel.status, ui_content: @channel.ui_content, user_id: @channel.user_id } }
    assert_redirected_to channel_url(@channel)
  end

  test "should destroy channel" do
    assert_difference('Channel.count', -1) do
      delete channel_url(@channel)
    end

    assert_redirected_to channels_url
  end
end
