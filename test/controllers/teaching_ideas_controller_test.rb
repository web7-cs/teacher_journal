require 'test_helper'

class TeachingIdeasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teaching_idea = teaching_ideas(:one)
  end

  test "should get index" do
    get teaching_ideas_url
    assert_response :success
  end

  test "should get new" do
    get new_teaching_idea_url
    assert_response :success
  end

  test "should create teaching_idea" do
    assert_difference('TeachingIdea.count') do
      post teaching_ideas_url, params: { teaching_idea: { content: @teaching_idea.content, title: @teaching_idea.title } }
    end

    assert_redirected_to teaching_idea_url(TeachingIdea.last)
  end

  test "should show teaching_idea" do
    get teaching_idea_url(@teaching_idea)
    assert_response :success
  end

  test "should get edit" do
    get edit_teaching_idea_url(@teaching_idea)
    assert_response :success
  end

  test "should update teaching_idea" do
    patch teaching_idea_url(@teaching_idea), params: { teaching_idea: { content: @teaching_idea.content, title: @teaching_idea.title } }
    assert_redirected_to teaching_idea_url(@teaching_idea)
  end

  test "should destroy teaching_idea" do
    assert_difference('TeachingIdea.count', -1) do
      delete teaching_idea_url(@teaching_idea)
    end

    assert_redirected_to teaching_ideas_url
  end
end
