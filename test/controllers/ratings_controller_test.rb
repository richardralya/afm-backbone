require 'test_helper'

class RatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rating = ratings(:one)
  end

  test "should get index" do
    get ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_rating_url
    assert_response :success
  end

  test "should create rating" do
    assert_difference('Rating.count') do
      post ratings_url, params: { rating: { criteria_id: @rating.criteria_id, date_created: @rating.date_created, date_modified: @rating.date_modified, rating: @rating.rating, status: @rating.status, user_id: @rating.user_id, user_rank: @rating.user_rank } }
    end

    assert_redirected_to rating_url(Rating.last)
  end

  test "should show rating" do
    get rating_url(@rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_rating_url(@rating)
    assert_response :success
  end

  test "should update rating" do
    patch rating_url(@rating), params: { rating: { criteria_id: @rating.criteria_id, date_created: @rating.date_created, date_modified: @rating.date_modified, rating: @rating.rating, status: @rating.status, user_id: @rating.user_id, user_rank: @rating.user_rank } }
    assert_redirected_to rating_url(@rating)
  end

  test "should destroy rating" do
    assert_difference('Rating.count', -1) do
      delete rating_url(@rating)
    end

    assert_redirected_to ratings_url
  end
end
