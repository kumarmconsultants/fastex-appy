class Shipment < ApplicationRecord
  def self.search(search)
    if search.present?
      search(search)
    else
      scoped
    end
  end
end
