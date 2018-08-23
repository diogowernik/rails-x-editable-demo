require 'test_helper'

class PageTranslationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_translation = page_translations(:one)
  end

  test "should get index" do
    get page_translations_url
    assert_response :success
  end

  test "should get new" do
    get new_page_translation_url
    assert_response :success
  end

  test "should create page_translation" do
    assert_difference('PageTranslation.count') do
      post page_translations_url, params: { page_translation: {  } }
    end

    assert_redirected_to page_translation_url(PageTranslation.last)
  end

  test "should show page_translation" do
    get page_translation_url(@page_translation)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_translation_url(@page_translation)
    assert_response :success
  end

  test "should update page_translation" do
    patch page_translation_url(@page_translation), params: { page_translation: {  } }
    assert_redirected_to page_translation_url(@page_translation)
  end

  test "should destroy page_translation" do
    assert_difference('PageTranslation.count', -1) do
      delete page_translation_url(@page_translation)
    end

    assert_redirected_to page_translations_url
  end
end
