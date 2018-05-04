feature 'Battle' do
  scenario 'Add player names' do
    sign_in_and_play
    expect(page).to have_content("Asia Vs. Alastair")
  end
end
