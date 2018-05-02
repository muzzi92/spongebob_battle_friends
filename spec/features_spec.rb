feature 'battle' do

<<<<<<< HEAD
scenario 'Add player names' do
  visit('/')
  save_and_open_page
  fill_in('Player_1', with: 'Asia')
  fill_in('Player_2', with: 'Alastair')
  click_button 'Submit'
  expect(page).to have_content ('Asia Vs. Alastair')
=======
  scenario 'Allows user to enter their names' do
    visit('/')
    fill_in "player_1_name", :with => "Alastair"
    fill_in "player_2_name", :with => "Charly"
    click_button "Submit"
    expect(page).to have_text('Alastair v Charly')
    end
>>>>>>> 5a75334632d8c24ccd29aea304c5dc22de7d3743
  end
end
