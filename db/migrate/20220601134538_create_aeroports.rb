class CreateAeroports < ActiveRecord::Migration[7.0]
  def change
    create_table :aeroports do |t|
      t.string :name
      t.string :libelle

      t.timestamps
    end
  end
end
