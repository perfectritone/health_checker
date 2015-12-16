class StatusMessage < ActiveRecord::Base
  
  def self.last_ten
    StatusMessage.order(created_at: :desc).take(10)
  end
end
