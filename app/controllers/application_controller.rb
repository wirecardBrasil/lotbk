require './lib/core/init'

class ApplicationController < ActionController::API
  def show
    # render plain: "JAIR"
    # Stats.show
    render plain: Init.show
  end
end
