feature 'Attack and receive confirmation' do
  scenario 'Attacking player 2' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_content "Ellis hit!"
  end
end
