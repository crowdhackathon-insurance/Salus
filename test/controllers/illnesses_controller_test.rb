require 'test_helper'

class IllnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @illness = illnesses(:one)
  end

  test "should get index" do
    get illnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_illness_url
    assert_response :success
  end

  test "should create illness" do
    assert_difference('Illness.count') do
      post illnesses_url, params: { illness: { appointment_id: @illness.appointment_id, data: @illness.data, hospital: @illness.hospital, symptom: @illness.symptom } }
    end

    assert_redirected_to illness_url(Illness.last)
  end

  test "should show illness" do
    get illness_url(@illness)
    assert_response :success
  end

  test "should get edit" do
    get edit_illness_url(@illness)
    assert_response :success
  end

  test "should update illness" do
    patch illness_url(@illness), params: { illness: { appointment_id: @illness.appointment_id, data: @illness.data, hospital: @illness.hospital, symptom: @illness.symptom } }
    assert_redirected_to illness_url(@illness)
  end

  test "should destroy illness" do
    assert_difference('Illness.count', -1) do
      delete illness_url(@illness)
    end

    assert_redirected_to illnesses_url
  end
end
