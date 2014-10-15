require 'rails_helper'

RSpec.describe "pictures/edit", :type => :view do
  before(:each) do
    @picture = assign(:picture, Picture.create!(
      :title => "MyString",
      :hq => "MyString",
      :lq => "MyString"
    ))
  end

  it "renders the edit picture form" do
    render

    assert_select "form[action=?][method=?]", picture_path(@picture), "post" do

      assert_select "input#picture_title[name=?]", "picture[title]"

      assert_select "input#picture_hq[name=?]", "picture[hq]"

      assert_select "input#picture_lq[name=?]", "picture[lq]"
    end
  end
end
