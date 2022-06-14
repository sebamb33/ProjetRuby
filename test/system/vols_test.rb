require "application_system_test_case"

class VolsTest < ApplicationSystemTestCase
  setup do
    @vol = vols(:one)
  end

  test "visiting the index" do
    visit vols_url
    assert_selector "h1", text: "Vols"
  end

  test "should create vol" do
    visit vols_url
    click_on "New vol"

    fill_in "Date depart", with: @vol.date_depart
    fill_in "Duree", with: @vol.duree
    fill_in "Id aeroport arrivee", with: @vol.id_aeroport_arrivee
    fill_in "Id aeroport depart", with: @vol.id_aeroport_depart
    fill_in "Nb place business", with: @vol.nb_place_business
    fill_in "Nb place economique", with: @vol.nb_place_economique
    fill_in "Numero", with: @vol.numero
    click_on "Create Vol"

    assert_text "Vol was successfully created"
    click_on "Back"
  end

  test "should update Vol" do
    visit vol_url(@vol)
    click_on "Edit this vol", match: :first

    fill_in "Date depart", with: @vol.date_depart
    fill_in "Duree", with: @vol.duree
    fill_in "Id aeroport arrivee", with: @vol.id_aeroport_arrivee
    fill_in "Id aeroport depart", with: @vol.id_aeroport_depart
    fill_in "Nb place business", with: @vol.nb_place_business
    fill_in "Nb place economique", with: @vol.nb_place_economique
    fill_in "Numero", with: @vol.numero
    click_on "Update Vol"

    assert_text "Vol was successfully updated"
    click_on "Back"
  end

  test "should destroy Vol" do
    visit vol_url(@vol)
    click_on "Destroy this vol", match: :first

    assert_text "Vol was successfully destroyed"
  end
end
