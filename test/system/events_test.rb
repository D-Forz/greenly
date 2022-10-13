require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit events_path

    assert_selector "h1", text: "Events"
  end
end
