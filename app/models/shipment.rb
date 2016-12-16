class Shipment < ApplicationRecord
  def self.search(search)
    if search.present?
      where("trackingNumber @@ :q or destination @@ :q or status @@ :q or lastScan @@ :q", q: search)
    else
      scoped
    end
  end
end
