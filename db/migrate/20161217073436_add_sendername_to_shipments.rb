class AddSendernameToShipments < ActiveRecord::Migration[5.0]
  def change
    add_column :shipments, :sendername, :string
  end
end
