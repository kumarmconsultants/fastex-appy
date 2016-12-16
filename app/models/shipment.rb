class Shipment < ApplicationRecord
  def self.search(search)
    where("trackingNumber ILIKE ?", "%#{search}%")
  end
end
