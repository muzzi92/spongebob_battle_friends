feature 'battle' do

scenario 'Add player names' do
  visit('/')
  fill_in('Player_1', with: 'Asia')
  fill_in('Player_2', with: 'Alastair')
  click_button 'Submit'
  expect(page).to have_content ('Asia Vs. Alastair')
  end
end
