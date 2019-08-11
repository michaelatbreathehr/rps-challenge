feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :players_name, with: 'Michael'
      click_button 'Submit'
      expect(page).to have_content 'Michael'
    end
  end
