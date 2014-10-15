require 'rails_helper'

RSpec.describe "pictures/show", :type => :view do
  before(:each) do
    @picture = assign(:picture, Picture.create!(
      :title => "Title",
      :hq => "Hq",
      :lq => "Lq"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Hq/)
    expect(rendered).to match(/Lq/)
  end
end
