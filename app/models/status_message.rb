class StatusMessage < ActiveRecord::Base
  
  def self.last_ten
    StatusMessage.order(created_at: :desc).take(10).map(&:message)
  end
end
