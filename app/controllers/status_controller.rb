class StatusController < ApplicationController

  def update
    raw_status = params[:status]
    status = status_to_boolean(raw_status)

    if !raw_status.nil? && status.nil?
      errors = ["The status must be either 'UP' or 'DOWN'"]

      render json: { errors: errors }, status: :unprocessable_entity
      return
    end

    StatusUpdater.new(
      status: status,
      status_message: params[:status_message]).update

    render nothing: true
  end

  private

    def status_to_boolean(status_string)
      case status_string
      when 'UP'
        true
      when 'DOWN'
        false
      end
    end

    def status_boolean_to_string(status_boolean)
      status_boolean ? 'UP' : 'DOWN'
    end
end
