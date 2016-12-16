class ChangeNamesAgain < ActiveRecord::Migration[5.0]
  def change
    rename_column :shipments, :lastScan, :lastscan
  end
end
