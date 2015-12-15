class CreateStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.boolean :status
    end
  end
end
