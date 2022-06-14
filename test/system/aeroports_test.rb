require "application_system_test_case"

class AeroportsTest < ApplicationSystemTestCase
  setup do
    @aeroport = aeroports(:one)
  end

  test "visiting the index" do
    visit aeroports_url
    assert_selector "h1", text: "Aeroports"
  end

  test "should create aeroport" do
    visit aeroports_url
    click_on "New aeroport"

    fill_in "Libelle", with: @aeroport.libelle
    fill_in "Name", with: @aeroport.name
    click_on "Create Aeroport"

    assert_text "Aeroport was successfully created"
    click_on "Back"
  end

  test "should update Aeroport" do
    visit aeroport_url(@aeroport)
    click_on "Edit this aeroport", match: :first

    fill_in "Libelle", with: @aeroport.libelle
    fill_in "Name", with: @aeroport.name
    click_on "Update Aeroport"

    assert_text "Aeroport was successfully updated"
    click_on "Back"
  end

  test "should destroy Aeroport" do
    visit aeroport_url(@aeroport)
    click_on "Destroy this aeroport", match: :first

    assert_text "Aeroport was successfully destroyed"
  end
end
