class ApplicationController < ActionController::Base
  def index
    `curl -s -X POST --data-urlencode 'payload={"text": "Hello! I am Foghorn! I lost my memory!"}' #{ENV['SLACK_WEBHOOK_URL']}`
    render nothing: true
  end
end