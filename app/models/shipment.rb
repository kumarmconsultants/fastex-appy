class Shipment < ApplicationRecord
  include PgSearch

  scope :sorted, ->{ order(name: :asc)}

  pg_search_scope :search,
                  against: [
                    :destination,
                    :status,
                    :lastScan
                  ],
                  using: {
                    tsearch: {
                      prefix: true,
                      normalization: 2
                    }
                  }
  def self.search(search)
    if search.present?
      then Shipment.search(search)
    else Shipment.all
    end.sorted
  end
end
