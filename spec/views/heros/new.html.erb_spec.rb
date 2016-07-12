require 'rails_helper'

RSpec.describe "heros/new", type: :view do
  before(:each) do
    assign(:hero, Hero.new(
      :name => "MyString",
      :age => "",
      :height => 1.5
    ))
  end

  it "renders new hero form" do
    render

    assert_select "form[action=?][method=?]", heros_path, "post" do

      assert_select "input#hero_name[name=?]", "hero[name]"

      assert_select "input#hero_age[name=?]", "hero[age]"

      assert_select "input#hero_height[name=?]", "hero[height]"
    end
  end
end
