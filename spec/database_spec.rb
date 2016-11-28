require 'spec_helper'

feature "Accessing the server" do

  scenario 'server is accessible on a specific port' do
    visit 'http://localhost:4000'
    expect(page).to have_content "this proves the homepage is"
  end

end
