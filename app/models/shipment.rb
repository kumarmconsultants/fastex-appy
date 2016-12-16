class Shipment < ApplicationRecord
  def self.search(search)
    if search.present?
    where("LOWER(trackingNumber) ilike :q", q: "%#{search}%")
    end
  end
end
