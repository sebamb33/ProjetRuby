require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "should create reservation" do
    visit reservations_url
    click_on "New reservation"

    check "Choix place" if @reservation.choix_place
    fill_in "Id user", with: @reservation.id_user
    fill_in "Id vol", with: @reservation.id_vol
    fill_in "Nb passagers", with: @reservation.nb_passagers
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "should update Reservation" do
    visit reservation_url(@reservation)
    click_on "Edit this reservation", match: :first

    check "Choix place" if @reservation.choix_place
    fill_in "Id user", with: @reservation.id_user
    fill_in "Id vol", with: @reservation.id_vol
    fill_in "Nb passagers", with: @reservation.nb_passagers
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservation" do
    visit reservation_url(@reservation)
    click_on "Destroy this reservation", match: :first

    assert_text "Reservation was successfully destroyed"
  end
end
