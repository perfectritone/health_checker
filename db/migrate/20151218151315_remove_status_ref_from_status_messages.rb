class RemoveStatusRefFromStatusMessages < ActiveRecord::Migration
  def change
    remove_reference :status_messages, :status
  end
end
