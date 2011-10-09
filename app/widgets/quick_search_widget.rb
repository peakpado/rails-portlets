class QuickSearchWidget < Apotomo::Widget

  responds_to_event :typing, :with => :search
  after_initialize :setup!
    
  def display
    render :layout => 'portlet'
  end
  
  def search(evt)
    items = Tweet.find(:all, :conditions => "text LIKE '%#{evt[:term]}%'").
    collect do |t|
      {:label => t.text}
    end
    
    render :text => items.to_json
  end

  private
    def setup!(*)
      @title = options[:title]
    end
    
end
