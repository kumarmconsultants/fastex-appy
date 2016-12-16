class CreateShipments < ActiveRecord::Migration[5.0]
  def change
    create_table :shipments do |t|
      t.string :trackingNumber
      t.string :destination
      t.string :status
      t.string :lastScan

      t.timestamps
    end
  end
end
