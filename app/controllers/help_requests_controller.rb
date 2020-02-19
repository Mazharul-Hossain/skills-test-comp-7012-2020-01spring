class HelpRequestsController < ApplicationController

  def index
    help_requests = HelpRequest.all
    respond_to do |format|
      format.html {render :index, locals: { help_requests: help_requests }}
    end
  end

end
