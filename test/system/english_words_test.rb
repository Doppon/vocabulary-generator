require "application_system_test_case"

class EnglishWordsTest < ApplicationSystemTestCase
  setup do
    @english_word = english_words(:one)
  end

  test "visiting the index" do
    visit english_words_url
    assert_selector "h1", text: "English Words"
  end

  test "creating a English word" do
    visit english_words_url
    click_on "New English Word"

    fill_in "Sentence", with: @english_word.sentence
    fill_in "Sentence meaning", with: @english_word.sentence_meaning
    fill_in "Word", with: @english_word.word
    fill_in "Word meaning", with: @english_word.word_meaning
    click_on "Create English word"

    assert_text "English word was successfully created"
    click_on "Back"
  end

  test "updating a English word" do
    visit english_words_url
    click_on "Edit", match: :first

    fill_in "Sentence", with: @english_word.sentence
    fill_in "Sentence meaning", with: @english_word.sentence_meaning
    fill_in "Word", with: @english_word.word
    fill_in "Word meaning", with: @english_word.word_meaning
    click_on "Update English word"

    assert_text "English word was successfully updated"
    click_on "Back"
  end

  test "destroying a English word" do
    visit english_words_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "English word was successfully destroyed"
  end
end
