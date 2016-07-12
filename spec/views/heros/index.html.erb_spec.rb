require 'rails_helper'

RSpec.describe "heros/index", type: :view do
  before(:each) do
    assign(:heros, [
      Hero.create!(
        :name => "Name",
        :age => "",
        :height => 2.5
      ),
      Hero.create!(
        :name => "Name",
        :age => "",
        :height => 2.5
      )
    ])
  end

  it "renders a list of heros" do
    render
    assert_select "tr>td", :text => "Name,".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
