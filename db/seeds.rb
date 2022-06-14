# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

# Création des  vols
CSV.foreach(Rails.root.join('Sujet/flights.csv'), headers: true, col_sep: ';') do |row|
  Vol.create({
               numero: row['number'],
               departure_aeroport: Aeroport.find_or_create_by(libelle: row['departure_airport']),
               arrival_aeroport: Aeroport.find_or_create_by(libelle: row['arrival_airport']),
               nb_place_business: row['business_class_seats'].to_i,
               nb_place_economique: row['economy_class_seats'].to_i,
               date_depart: row['departure_date'].to_datetime,
               duree: row['duration'].to_i,
             })
end