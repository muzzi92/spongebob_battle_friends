def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Asia')
  fill_in('player_2', with: 'Alastair')
  click_button 'Submit'
end
