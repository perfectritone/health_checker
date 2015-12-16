require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Litmus Status' do

  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'

  post '/status' do

    parameter :status, "Should be either 'UP' or 'Down'"
    parameter :status_message, "A message to go along with the status"

    let(:status) { 'UP' }
    let(:status_message) { "Everything's looking up!" }

    example_request "Status is true after 'UP' is sent as the status" do
      expect(response_status).to eq 200
    end
  end
end
