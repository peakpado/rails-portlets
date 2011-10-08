require 'test_helper'

class TrashbinWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:trashbin, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select "h1"
  end
end
