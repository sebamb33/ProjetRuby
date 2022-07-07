class Vol < ApplicationRecord
  belongs_to :departure_aeroport, class_name: 'Aeroport'
  belongs_to :arrival_aeroport, class_name: 'Aeroport'
end
