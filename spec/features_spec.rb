feature 'battle' do

  scenario 'Allows user to enter their names' do
    visit('/')
    fill_in "player_1_name", :with => "Alastair"
    fill_in "player_2_name", :with => "Charly"
    click_button "Submit"
    expect(page).to have_text('Alastair v Charly')
    end
  end
