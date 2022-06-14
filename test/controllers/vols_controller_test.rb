require "test_helper"

class VolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vol = vols(:one)
  end

  test "should get index" do
    get vols_url
    assert_response :success
  end

  test "should get new" do
    get new_vol_url
    assert_response :success
  end

  test "should create vol" do
    assert_difference("Vol.count") do
      post vols_url, params: { vol: { date_depart: @vol.date_depart, duree: @vol.duree, id_aeroport_arrivee: @vol.id_aeroport_arrivee, id_aeroport_depart: @vol.id_aeroport_depart, nb_place_business: @vol.nb_place_business, nb_place_economique: @vol.nb_place_economique, numero: @vol.numero } }
    end

    assert_redirected_to vol_url(Vol.last)
  end

  test "should show vol" do
    get vol_url(@vol)
    assert_response :success
  end

  test "should get edit" do
    get edit_vol_url(@vol)
    assert_response :success
  end

  test "should update vol" do
    patch vol_url(@vol), params: { vol: { date_depart: @vol.date_depart, duree: @vol.duree, id_aeroport_arrivee: @vol.id_aeroport_arrivee, id_aeroport_depart: @vol.id_aeroport_depart, nb_place_business: @vol.nb_place_business, nb_place_economique: @vol.nb_place_economique, numero: @vol.numero } }
    assert_redirected_to vol_url(@vol)
  end

  test "should destroy vol" do
    assert_difference("Vol.count", -1) do
      delete vol_url(@vol)
    end

    assert_redirected_to vols_url
  end
end
