class ApplicationController < ActionController::Base
  def index
    request = Request.new request_params
    request.reply if request.valid?
    render nothing: true
  end

private

  def request_params
    params.except :controller, :action
  end
end