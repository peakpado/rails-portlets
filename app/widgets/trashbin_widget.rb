class TrashbinWidget < Apotomo::Widget

  responds_to_event :drop, :with => :trash
  
  after_initialize :setup!
  
  def display
    render :layout => 'portlet'
  end
  
  def trash(evt)
    Tweet.find(evt[:id]).delete
    trigger :tweetDeleted
    
    update :view => :display
  end
  
  private
    def setup!(*)
      @title = options[:title]
    end

end
