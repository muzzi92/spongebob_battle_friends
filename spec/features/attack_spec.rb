
feature 'Attack' do
  scenario 'Attack oponent & see confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content("Alastair has been hit")
  end

  scenario 'Reduces player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content("Alastair: 90 HP")
  end
end
