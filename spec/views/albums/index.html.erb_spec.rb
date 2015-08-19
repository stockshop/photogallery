require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :title => "Title",
        :user_id => 1,
        :description => "MyText"
      ),
      Album.create!(
        :title => "Title",
        :user_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
