class CreateStatusMessage < ActiveRecord::Migration
  def change
    create_table :status_messages do |t|
      t.references :status, index: true, foreign_key: true
      t.string :message
    end
  end
end
