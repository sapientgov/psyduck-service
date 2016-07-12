require 'rails_helper'

RSpec.describe "heros/show", type: :view do
  before(:each) do
    @hero = assign(:hero, Hero.create!(
      :name => "Name",
      :age => "",
      :height => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
  end
end
