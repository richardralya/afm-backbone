require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = topics(:one)
  end

  test "should get index" do
    get topics_url
    assert_response :success
  end

  test "should get new" do
    get new_topic_url
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post topics_url, params: { topic: { channel_id: @topic.channel_id, content: @topic.content, date_created: @topic.date_created, date_modified: @topic.date_modified, deadline_date: @topic.deadline_date, end_date: @topic.end_date, is_private: @topic.is_private, media_link: @topic.media_link, name: @topic.name, org_id: @topic.org_id, start_date: @topic.start_date, status: @topic.status, topic_type: @topic.topic_type, user_id: @topic.user_id } }
    end

    assert_redirected_to topic_url(Topic.last)
  end

  test "should show topic" do
    get topic_url(@topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic_url(@topic)
    assert_response :success
  end

  test "should update topic" do
    patch topic_url(@topic), params: { topic: { channel_id: @topic.channel_id, content: @topic.content, date_created: @topic.date_created, date_modified: @topic.date_modified, deadline_date: @topic.deadline_date, end_date: @topic.end_date, is_private: @topic.is_private, media_link: @topic.media_link, name: @topic.name, org_id: @topic.org_id, start_date: @topic.start_date, status: @topic.status, topic_type: @topic.topic_type, user_id: @topic.user_id } }
    assert_redirected_to topic_url(@topic)
  end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete topic_url(@topic)
    end

    assert_redirected_to topics_url
  end
end
