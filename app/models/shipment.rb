class Shipment < ApplicationRecord
  def self.search(search)
    if search.present?
      where("lower(trackingNumber) ilike :q", q: "%#{search.downcase}%")
    else
      scoped
    end
  end
end
