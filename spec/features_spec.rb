feature 'battle' do
  scenario 'Add player names' do
    visit('/')
    fill_in('player_1', with: 'Asia')
    fill_in('player_2', with: 'Alastair')
    click_button 'Submit'
    expect(page).to have_content("Asia Vs. Alastair")
  end
end

feature 'view hit hitpoints' do
  scenario 'See players 2 hit points' do
    visit('/')
    fill_in('player_1', with: 'Asia')
    fill_in('player_2', with: 'Alastair')
    click_button 'Submit'
    expect(page).to have_content('Alastair: 100 HP')
  end

end
