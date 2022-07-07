json.extract! reservation, :id, :id_vol, :id_user, :nb_passagers, :choix_place, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
