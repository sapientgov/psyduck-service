require 'rails_helper'

RSpec.describe "heros/edit", type: :view do
  before(:each) do
    @hero = assign(:hero, Hero.create!(
      :name => "MyString",
      :age => "",
      :height => 1.5
    ))
  end

  it "renders the edit hero form" do
    render

    assert_select "form[action=?][method=?]", hero_path(@hero), "post" do

      assert_select "input#hero_name[name=?]", "hero[name]"

      assert_select "input#hero_age[name=?]", "hero[age]"

      assert_select "input#hero_height[name=?]", "hero[height]"
    end
  end
end
