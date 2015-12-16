class StatusHistoryController < ApplicationController

  def show
    current_status = Status.current
    status_message_history = StatusMessage.last_ten
  end
end
