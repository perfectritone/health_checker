class Status < ActiveRecord::Base
  def self.current
    order(created_at: :desc).take.status
  end
end
