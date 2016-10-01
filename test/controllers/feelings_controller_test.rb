require 'test_helper'

class FeelingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feeling = feelings(:one)
  end

  test "should get index" do
    get feelings_url
    assert_response :success
  end

  test "should get new" do
    get new_feeling_url
    assert_response :success
  end

  test "should create feeling" do
    assert_difference('Feeling.count') do
      post feelings_url, params: { feeling: { day: @feeling.day, moring_feeling: @feeling.moring_feeling, sentiment_analysis: @feeling.sentiment_analysis } }
    end

    assert_redirected_to feeling_url(Feeling.last)
  end

  test "should show feeling" do
    get feeling_url(@feeling)
    assert_response :success
  end

  test "should get edit" do
    get edit_feeling_url(@feeling)
    assert_response :success
  end

  test "should update feeling" do
    patch feeling_url(@feeling), params: { feeling: { day: @feeling.day, moring_feeling: @feeling.moring_feeling, sentiment_analysis: @feeling.sentiment_analysis } }
    assert_redirected_to feeling_url(@feeling)
  end

  test "should destroy feeling" do
    assert_difference('Feeling.count', -1) do
      delete feeling_url(@feeling)
    end

    assert_redirected_to feelings_url
  end
end
