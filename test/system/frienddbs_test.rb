require "application_system_test_case"

class FrienddbsTest < ApplicationSystemTestCase
  setup do
    @frienddb = frienddbs(:one)
  end

  test "visiting the index" do
    visit frienddbs_url
    assert_selector "h1", text: "Frienddbs"
  end

  test "creating a Frienddb" do
    visit frienddbs_url
    click_on "New Frienddb"

    fill_in "Email", with: @frienddb.email
    fill_in "First name", with: @frienddb.first_name
    fill_in "Last name", with: @frienddb.last_name
    fill_in "Phone", with: @frienddb.phone
    fill_in "Twitter", with: @frienddb.twitter
    click_on "Create Frienddb"

    assert_text "Frienddb was successfully created"
    click_on "Back"
  end

  test "updating a Frienddb" do
    visit frienddbs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @frienddb.email
    fill_in "First name", with: @frienddb.first_name
    fill_in "Last name", with: @frienddb.last_name
    fill_in "Phone", with: @frienddb.phone
    fill_in "Twitter", with: @frienddb.twitter
    click_on "Update Frienddb"

    assert_text "Frienddb was successfully updated"
    click_on "Back"
  end

  test "destroying a Frienddb" do
    visit frienddbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frienddb was successfully destroyed"
  end
end
