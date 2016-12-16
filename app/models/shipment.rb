class Shipment < ApplicationRecord::Base
  def self.search(search)
    where("trackingNumber ILIKE ?", "%#{search}%")
  end
end
