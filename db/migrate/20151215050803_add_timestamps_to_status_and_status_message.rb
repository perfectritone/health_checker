class AddTimestampsToStatusAndStatusMessage < ActiveRecord::Migration
  def change
    add_timestamps :statuses
    add_timestamps :status_messages
  end
end
