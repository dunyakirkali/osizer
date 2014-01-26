require 'spec_helper'

describe "images/edit" do
  before(:each) do
    @image = FactoryGirl.create(:image)
  end

  it "renders the edit image form" do
    render
    assert_select "form[action=?][method=?]", image_path(@image.id), "post" do
    end
  end
end
