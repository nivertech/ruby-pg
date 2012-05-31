class HelloController < ApplicationController
 
  layout 'application' # this changes the layout

  # can use helper_method to share methods from helper
  def index
    @name = params[:name]
    # logger.debug "debug message"
    # logger.warn "warning message"`
  end
end
