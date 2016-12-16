class Shipment < ApplicationRecord
  def self.search(search)
    if search.present?
      where("trackingNumber @@ :q", q: search)
    else
      scoped
    end
  end
end
