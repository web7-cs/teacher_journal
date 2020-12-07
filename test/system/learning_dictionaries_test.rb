require "application_system_test_case"

class LearningDictionariesTest < ApplicationSystemTestCase
  setup do
    @learning_dictionary = learning_dictionaries(:one)
  end

  test "visiting the index" do
    visit learning_dictionaries_url
    assert_selector "h1", text: "Learning Dictionaries"
  end

  test "creating a Learning dictionary" do
    visit learning_dictionaries_url
    click_on "New Learning Dictionary"

    fill_in "Content", with: @learning_dictionary.content
    fill_in "Definition", with: @learning_dictionary.definition
    fill_in "Title", with: @learning_dictionary.title
    click_on "Create Learning dictionary"

    assert_text "Learning dictionary was successfully created"
    click_on "Back"
  end

  test "updating a Learning dictionary" do
    visit learning_dictionaries_url
    click_on "Edit", match: :first

    fill_in "Content", with: @learning_dictionary.content
    fill_in "Definition", with: @learning_dictionary.definition
    fill_in "Title", with: @learning_dictionary.title
    click_on "Update Learning dictionary"

    assert_text "Learning dictionary was successfully updated"
    click_on "Back"
  end

  test "destroying a Learning dictionary" do
    visit learning_dictionaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Learning dictionary was successfully destroyed"
  end
end
