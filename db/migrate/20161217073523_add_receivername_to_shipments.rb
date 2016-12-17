class AddReceivernameToShipments < ActiveRecord::Migration[5.0]
  def change
    add_column :shipments, :receivername, :string
  end
end
