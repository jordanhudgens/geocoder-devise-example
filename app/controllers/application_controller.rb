class ApplicationController < ActionController::Base
  before_action :store_request_in_thread

  def store_request_in_thread
    Thread.current[:request] = request
  end
end
