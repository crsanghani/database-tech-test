require 'spec_helper'

feature "Accessing the server" do

  scenario "server is accessible on a specific port" do
    visit 'http://localhost:4000'
    expect(page).to have_content "this proves the homepage is on the custom port"
  end

end

feature "storing temporary variables" do

  scenario "setting values" do
    visit '/set?somekey=somevalue'
    expect(page).to have_content 'somekey: somevalue'
  end
end
