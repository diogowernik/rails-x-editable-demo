require "application_system_test_case"

class PageTranslationsTest < ApplicationSystemTestCase
  setup do
    @page_translation = page_translations(:one)
  end

  test "visiting the index" do
    visit page_translations_url
    assert_selector "h1", text: "Page Translations"
  end

  test "creating a Page translation" do
    visit page_translations_url
    click_on "New Page Translation"

    click_on "Create Page translation"

    assert_text "Page translation was successfully created"
    click_on "Back"
  end

  test "updating a Page translation" do
    visit page_translations_url
    click_on "Edit", match: :first

    click_on "Update Page translation"

    assert_text "Page translation was successfully updated"
    click_on "Back"
  end

  test "destroying a Page translation" do
    visit page_translations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page translation was successfully destroyed"
  end
end
