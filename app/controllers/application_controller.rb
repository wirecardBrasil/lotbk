require './lib/core/init'

class ApplicationController < ActionController::API
  def show
    render plain: "#{Stats.new.show} + application"
  end
end
