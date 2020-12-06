require "application_system_test_case"

class TeachingIdeasTest < ApplicationSystemTestCase
  setup do
    @teaching_idea = teaching_ideas(:one)
  end

  test "visiting the index" do
    visit teaching_ideas_url
    assert_selector "h1", text: "Teaching Ideas"
  end

  test "creating a Teaching idea" do
    visit teaching_ideas_url
    click_on "New Teaching Idea"

    fill_in "Content", with: @teaching_idea.content
    fill_in "Title", with: @teaching_idea.title
    click_on "Create Teaching idea"

    assert_text "Teaching idea was successfully created"
    click_on "Back"
  end

  test "updating a Teaching idea" do
    visit teaching_ideas_url
    click_on "Edit", match: :first

    fill_in "Content", with: @teaching_idea.content
    fill_in "Title", with: @teaching_idea.title
    click_on "Update Teaching idea"

    assert_text "Teaching idea was successfully updated"
    click_on "Back"
  end

  test "destroying a Teaching idea" do
    visit teaching_ideas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teaching idea was successfully destroyed"
  end
end
