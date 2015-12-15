class StatusController < ApplicationController

  def update
    new_status = case params[:status]
                 when "UP"
                   true
                 when "DOWN"
                   false
                 end

    unless new_status.nil?
      Status.create(status: new_status)

      render json: { success: true }
    else
      render json: { success: false, errors: ["Status must be either UP or DOWN"] }
    end
  end
end
