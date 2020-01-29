class RenameColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :events, :eventDate, :event_datetime
  end
end
