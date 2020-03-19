require 'rails_helper'

RSpec.describe "news/index", type: :view do
  before(:each) do
    assign(:news, [
      News.create!(
        :title => "Title",
        :description => "Description"
      ),
      News.create!(
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of news" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
