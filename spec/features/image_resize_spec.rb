require "spec_helper"

feature "Image resize" do
  scenario "User uploads and crops an image" do
    visit "/"
    
    attach_file "image_file", File.join(Rails.root, 'spec', 'fixtures', 'rails.png')
    
    fill_in "image_width", :with => "36"
    fill_in "image_height", :with => "36"
        
    click_on "Submit"
    
    click_on "Back"

    expect(page).to have_xpath("//img[@width='36' and @heigth='36']")
  end
end