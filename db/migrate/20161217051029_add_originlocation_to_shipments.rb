class AddOriginlocationToShipments < ActiveRecord::Migration[5.0]
  def change
    add_column :shipments, :originlocation, :string
  end
end
