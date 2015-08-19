require 'rails_helper'

RSpec.describe "photos/show", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :fullpath => "Fullpath",
      :format => "Format",
      :caption => "Caption",
      :size => 1.5,
      :album_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fullpath/)
    expect(rendered).to match(/Format/)
    expect(rendered).to match(/Caption/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
  end
end
