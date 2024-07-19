require 'rails_helper'

RSpec.describe "User index" do

  describe '#us1' do
    it 'clicks on the fire nation and is taken to a new page' do
      # As a user,
      # When I visit "/"
      visit '/'
      # And I Select "Fire Nation" from the select field
      select 'Fire Nation', from: 'nation'
      # (Note: Use the existing select field)
      click_on("Search For Members")
      # And I click "Search For Members"
      # Then I should be on page "/search"
      expect(current_path).to eq('/search')
      # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
      # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
      # And for each of the members I should see:
      expect(page).to have_content("Name: Bully guard")

      expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/0/02/Bully_guard.png/revision/latest?cb=20120702232626']")
      
      # - The name of the member (and their photo, if they have one)
      # - The list of allies or "None"

      expect(page).to have_content("Allies: Azula")
      expect(page).to have_content("Enemies: Sokka")
      # - The list of enemies or "None"
      save_and_open_page
      expect(page).to have_content("Affiliation: Fire Nation")
      # - Any affiliations that the member has
    end


  end
end