class RemoveIdColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :vols, :id_aeroport_arrivee
    remove_column :vols, :id_aeroport_depart
    remove_column :reservations, :id_vol
    remove_column :reservations, :id_user
  end
end
