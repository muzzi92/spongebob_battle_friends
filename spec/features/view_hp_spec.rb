feature 'View hitpoints' do
  scenario 'See players 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Alastair: 100 HP')
  end
end
