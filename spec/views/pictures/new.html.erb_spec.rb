require 'rails_helper'

RSpec.describe "pictures/new", :type => :view do
  before(:each) do
    assign(:picture, Picture.new(
      :title => "MyString",
      :hq => "MyString",
      :lq => "MyString"
    ))
  end

  it "renders new picture form" do
    render

    assert_select "form[action=?][method=?]", pictures_path, "post" do

      assert_select "input#picture_title[name=?]", "picture[title]"

      assert_select "input#picture_hq[name=?]", "picture[hq]"

      assert_select "input#picture_lq[name=?]", "picture[lq]"
    end
  end
end
