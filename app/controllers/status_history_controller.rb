class StatusHistoryController < ApplicationController

  def show
    @current_status = Status.current
    @status_message_history = last_ten_status_messages
  end

  private

  def last_ten_status_messages
    StatusMessage.last_ten.map do |status_message|
      OpenStruct.new(
        message: status_message.message,
        timestamp: status_message.created_at)
    end
  end
end
