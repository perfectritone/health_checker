class StatusController < ApplicationController

  def update
    status = status_to_boolean(params[:status])
    status_updater = StatusUpdater.new(status: status, status_message: params[:status_message])

    status_updater.update

    render nothing: true
  end

  private

    def status_to_boolean(status_string)
      case status_string
      when "UP"
        true
      when "DOWN"
        false
      end
    end

    def status_boolean_to_string(status_boolean)
      status_boolean ? "UP" : "DOWN"
    end
end
