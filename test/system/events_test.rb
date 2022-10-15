require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  def setup
    login_as users(:admin)
    @event = events(:event_one)
  end

  test "Showing a event" do
    visit event_path(@event)
    assert_selector "h2", text: @event.title
  end

  test "Creating a event" do
    visit new_event_path
    fill_in "Title", with: "My event of the year"
    fill_in "Description", with: "My description"
    fill_in "Event date", with: Date.today
    fill_in "Address", with: "My address"
    click_on "Create Event"
    visit events_path
    assert_selector "h2", text: "My event of the year"
  end

  test "Updating a event" do
    visit edit_event_path(@event)
    fill_in "Title", with: "Some text updated"
    click_on "Update Event"
    assert_selector "h2", text: "Some text updated"
  end

  test "Destroying a event" do
    visit event_path(@event)
    click_on "Delete"
    page.driver.browser.switch_to.alert.accept
    assert_no_text @event.title
  end
end
