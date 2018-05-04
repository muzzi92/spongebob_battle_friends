feature 'Switching_turns' do
  it 'let p2 attack p1 and reduces p1 hp' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Next Move'
    click_link 'Attack'
    expect(page).to have_content("Asia: 90 HP")
  end
end
