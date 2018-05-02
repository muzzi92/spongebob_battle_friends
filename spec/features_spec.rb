feature 'battle' do
  scenario 'Add player names' do
    sign_in_and_play
    expect(page).to have_content("Asia Vs. Alastair")
  end
end

feature 'view hit hitpoints' do
  scenario 'See players 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Alastair: 100 HP')
  end

end
