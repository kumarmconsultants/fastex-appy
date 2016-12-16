json.extract! shipment, :id, :trackingNumber, :destination, :status, :lastScan, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)