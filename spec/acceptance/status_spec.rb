require 'spec_helper'
require 'rspec_api_documentation/dsl'

resource "Litmus Status" do

  header "Accept", "application/json"
  header "Content-Type", "application/json"

  post "/status" do

#    parameter :status, "Should be either \"UP\" or \"Down\""
#    parameter :status_message, "A message to go along with the status"

    example_request "Status is true after \"UP\" is sent as the status", status: "UP" do
      expect(Status.current).to eq true
    end

    example_request "Status is false after \"DOWN\" is sent as the status", status: "DOWN" do
      expect(Status.current).to eq false
    end

    example_request "Error when an unknown status is sent", status: "Hmmmm" do
      response = JSON.parse(response_body)

      expect(response['success']).to eq false
      expect(response['errors']).to_not be_nil
    end
  end
end
