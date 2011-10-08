class DashboardController < ApplicationController
  
  has_widgets do |root|
    root << widget(:twitter, :title => "Twitter")
    root << widget(:trashbin, :title => "Trash Bin")
  end
  
  def index
  end

end
