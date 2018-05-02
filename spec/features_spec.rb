feature 'battle' do

scenario 'Add player names' do
  visit('/')
  save_and_open_page
  fill_in('player_1', with: 'Asia')
  fill_in('player_2', with: 'Alastair')
  click_button 'Submit'
  expect(page).to have_content ("Asia Vs. Alastair")
  end
end
