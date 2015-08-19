require 'rails_helper'

RSpec.describe "photos/new", type: :view do
  before(:each) do
    assign(:photo, Photo.new(
      :fullpath => "MyString",
      :format => "MyString",
      :caption => "MyString",
      :size => 1.5,
      :album_id => 1
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input#photo_fullpath[name=?]", "photo[fullpath]"

      assert_select "input#photo_format[name=?]", "photo[format]"

      assert_select "input#photo_caption[name=?]", "photo[caption]"

      assert_select "input#photo_size[name=?]", "photo[size]"

      assert_select "input#photo_album_id[name=?]", "photo[album_id]"
    end
  end
end
