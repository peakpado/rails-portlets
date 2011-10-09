class DashboardController < ApplicationController
  
  has_widgets do |root|
    root << widget(:twitter, :title => "Twitter")
    root << widget(:trashbin, :title => "Trash tweets here!")
    root << widget(:quick_search, :title => "Quick search")
  end
  
  def index
  end

end
