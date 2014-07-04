class LogsController < ApplicationController
  def index
    @logs = PaperTrail::Version.all.order("created_at DESC")
  end
end
