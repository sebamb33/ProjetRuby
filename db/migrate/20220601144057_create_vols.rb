class CreateVols < ActiveRecord::Migration[7.0]
  def change
    create_table :vols do |t|
      t.integer :numero
      t.integer :id_aeroport_depart
      t.integer :id_aeroport_arrivee
      t.integer :duree
      t.datetime :date_depart
      t.integer :nb_place_economique
      t.integer :nb_place_business

      t.timestamps
    end
  end
end
