class TwitterWidget < Apotomo::Widget

  responds_to_event :submit, :with => :process_tweet
  after_initialize :setup!
  
  after_add do
    root.respond_to_event :tweetDeleted, :with => :redraw, :on => widget_id
  end
   
  def display
    @tweets = Tweet.find(:all)
    render :layout => "portlet"
  end

  def process_tweet(evt)
    @tweet = Tweet.new(:text => evt[:text]).save
    
    @tweets = Tweet.find(:all)
    update :view => :display
  end
  
  def redraw
    @tweets = Tweet.find(:all)
    update :view => :display
  end
  
  private
    def setup!(*)
      @title = options[:title]
    end

end
