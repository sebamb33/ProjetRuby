class AddAeroportsToVols < ActiveRecord::Migration[7.0]
  def change
    add_reference :vols, :departure_aeroport, null: false, foreign_key: { to_table: :aeroports }
    add_reference :vols, :arrival_aeroport, null: false, foreign_key: { to_table: :aeroports }
  end
end
