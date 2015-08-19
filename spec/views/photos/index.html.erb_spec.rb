require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :fullpath => "Fullpath",
        :format => "Format",
        :caption => "Caption",
        :size => 1.5,
        :album_id => 1
      ),
      Photo.create!(
        :fullpath => "Fullpath",
        :format => "Format",
        :caption => "Caption",
        :size => 1.5,
        :album_id => 1
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => "Fullpath".to_s, :count => 2
    assert_select "tr>td", :text => "Format".to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
