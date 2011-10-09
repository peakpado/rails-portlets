require 'test_helper'

class QuickSearchWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:quick_search, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select "h1"
  end
end
