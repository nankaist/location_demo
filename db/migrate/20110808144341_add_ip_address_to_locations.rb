class AddIpAddressToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :ip_address, :string
  end

  def self.down
    remove_column :locations, :ip_address
  end
end
