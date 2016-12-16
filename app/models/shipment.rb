class Shipment < ApplicationRecord
  def self.search(search)
    if search.present?
      where("lower(trackingNumber) like :q", q: "%#{search.downcase}%")
    else
      scoped
    end
  end
end
