json.extract! shipment, :id, :trackingnumber, :destination, :status, :lastscan, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
