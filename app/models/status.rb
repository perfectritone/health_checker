class Status < ActiveRecord::Base
  def self.current
    order(:created_at).take.status
  end
end
