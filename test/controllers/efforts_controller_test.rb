require 'test_helper'

class EffortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @effort = efforts(:one)
  end

  test "should get index" do
    get efforts_url
    assert_response :success
  end

  test "should get new" do
    get new_effort_url
    assert_response :success
  end

  test "should create effort" do
    assert_difference('Effort.count') do
      post efforts_url, params: { effort: { accomodation: @effort.accomodation, attendees_count: @effort.attendees_count, catering: @effort.catering, catering_cost: @effort.catering_cost, course_prep: @effort.course_prep, equipment: @effort.equipment, food: @effort.food, hours: @effort.hours, lead_cost: @effort.lead_cost, lead_number: @effort.lead_number, misc: @effort.misc, shipping_cost: @effort.shipping_cost, ta_cost: @effort.ta_cost, ta_number: @effort.ta_number, travel_cost: @effort.travel_cost, travel_medium: @effort.travel_medium } }
    end

    assert_redirected_to effort_url(Effort.last)
  end

  test "should show effort" do
    get effort_url(@effort)
    assert_response :success
  end

  test "should get edit" do
    get edit_effort_url(@effort)
    assert_response :success
  end

  test "should update effort" do
    patch effort_url(@effort), params: { effort: { accomodation: @effort.accomodation, attendees_count: @effort.attendees_count, catering: @effort.catering, catering_cost: @effort.catering_cost, course_prep: @effort.course_prep, equipment: @effort.equipment, food: @effort.food, hours: @effort.hours, lead_cost: @effort.lead_cost, lead_number: @effort.lead_number, misc: @effort.misc, shipping_cost: @effort.shipping_cost, ta_cost: @effort.ta_cost, ta_number: @effort.ta_number, travel_cost: @effort.travel_cost, travel_medium: @effort.travel_medium } }
    assert_redirected_to effort_url(@effort)
  end

  test "should destroy effort" do
    assert_difference('Effort.count', -1) do
      delete effort_url(@effort)
    end

    assert_redirected_to efforts_url
  end
end
