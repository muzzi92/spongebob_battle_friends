feature 'Battle' do
  scenario 'Add player names' do
    sign_in_and_play
    expect(page).to have_content("Asia Vs. Alastair")
  end
end

feature 'View hitpoints' do
  scenario 'See players 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Alastair: 100 HP')
  end

feature 'Attack' do
  xscenario 'Attack oponent & see confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content("Alastair has been hit")
    end

  xscenario 'Reduces player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
      expect(page).to have_content("Alastair: 90 HP")
    end
  end

end
