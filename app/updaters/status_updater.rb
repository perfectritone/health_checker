class StatusUpdater

  def initialize(status: nil, status_message: nil)
    @status = status
    @status_message = status_message
  end

  def update
    Status.create(status: status) unless status.nil?
    StatusMessage.create(message: status_message) unless status_message.nil?
  end

  protected

    attr_reader :status, :status_message
end
