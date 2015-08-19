require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :fullpath => "MyString",
      :format => "MyString",
      :caption => "MyString",
      :size => 1.5,
      :album_id => 1
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "input#photo_fullpath[name=?]", "photo[fullpath]"

      assert_select "input#photo_format[name=?]", "photo[format]"

      assert_select "input#photo_caption[name=?]", "photo[caption]"

      assert_select "input#photo_size[name=?]", "photo[size]"

      assert_select "input#photo_album_id[name=?]", "photo[album_id]"
    end
  end
end
