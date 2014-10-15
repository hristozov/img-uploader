require 'rails_helper'

RSpec.describe "pictures/index", :type => :view do
  before(:each) do
    assign(:pictures, [
      Picture.create!(
        :title => "Title",
        :hq => "Hq",
        :lq => "Lq"
      ),
      Picture.create!(
        :title => "Title",
        :hq => "Hq",
        :lq => "Lq"
      )
    ])
  end

  it "renders a list of pictures" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Hq".to_s, :count => 2
    assert_select "tr>td", :text => "Lq".to_s, :count => 2
  end
end
