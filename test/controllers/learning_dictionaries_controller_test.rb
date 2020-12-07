require 'test_helper'

class LearningDictionariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learning_dictionary = learning_dictionaries(:one)
  end

  test "should get index" do
    get learning_dictionaries_url
    assert_response :success
  end

  test "should get new" do
    get new_learning_dictionary_url
    assert_response :success
  end

  test "should create learning_dictionary" do
    assert_difference('LearningDictionary.count') do
      post learning_dictionaries_url, params: { learning_dictionary: { content: @learning_dictionary.content, definition: @learning_dictionary.definition, title: @learning_dictionary.title } }
    end

    assert_redirected_to learning_dictionary_url(LearningDictionary.last)
  end

  test "should show learning_dictionary" do
    get learning_dictionary_url(@learning_dictionary)
    assert_response :success
  end

  test "should get edit" do
    get edit_learning_dictionary_url(@learning_dictionary)
    assert_response :success
  end

  test "should update learning_dictionary" do
    patch learning_dictionary_url(@learning_dictionary), params: { learning_dictionary: { content: @learning_dictionary.content, definition: @learning_dictionary.definition, title: @learning_dictionary.title } }
    assert_redirected_to learning_dictionary_url(@learning_dictionary)
  end

  test "should destroy learning_dictionary" do
    assert_difference('LearningDictionary.count', -1) do
      delete learning_dictionary_url(@learning_dictionary)
    end

    assert_redirected_to learning_dictionaries_url
  end
end
