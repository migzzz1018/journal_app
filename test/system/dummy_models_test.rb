require "application_system_test_case"

class DummyModelsTest < ApplicationSystemTestCase
  setup do
    @dummy_model = dummy_models(:one)
  end

  test "visiting the index" do
    visit dummy_models_url
    assert_selector "h1", text: "Dummy models"
  end

  test "should create dummy model" do
    visit dummy_models_url
    click_on "New dummy model"

    fill_in "Age", with: @dummy_model.age
    fill_in "Name", with: @dummy_model.name
    click_on "Create Dummy model"

    assert_text "Dummy model was successfully created"
    click_on "Back"
  end

  test "should update Dummy model" do
    visit dummy_model_url(@dummy_model)
    click_on "Edit this dummy model", match: :first

    fill_in "Age", with: @dummy_model.age
    fill_in "Name", with: @dummy_model.name
    click_on "Update Dummy model"

    assert_text "Dummy model was successfully updated"
    click_on "Back"
  end

  test "should destroy Dummy model" do
    visit dummy_model_url(@dummy_model)
    click_on "Destroy this dummy model", match: :first

    assert_text "Dummy model was successfully destroyed"
  end
end
