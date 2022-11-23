class ChangeLocalisationToAddressInBike < ActiveRecord::Migration[7.0]
  def change
    rename_column :bikes, :localisation, :address
  end
end
