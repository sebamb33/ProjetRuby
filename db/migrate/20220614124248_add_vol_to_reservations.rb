class AddVolToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :vol, null: false, foreign_key: true
  end
end
