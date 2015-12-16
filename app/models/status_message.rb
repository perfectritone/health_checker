class StatusMessage < ActiveRecord::Base
  
  def self.last_ten
    StatusMessage.all
  end
end
