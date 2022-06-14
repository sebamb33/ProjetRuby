class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :id_vol
      t.integer :id_user
      t.integer :nb_passagers
      t.boolean :choix_place

      t.timestamps
    end
  end
end
