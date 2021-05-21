class ChangeAcceptedStatusOfLocations < ActiveRecord::Migration[6.0]
  def change
    change_column_default :locations, :accepted_status, from: false, to: nil
  end
end
