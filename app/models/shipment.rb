class Shipment < ApplicationRecord
  def self.search(search)
    where("trackingNumber LIKE ?", "%#{search}%")
  end
end
