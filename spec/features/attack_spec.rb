feature 'Attack and receive confirmation' do
  scenario 'Attacking player 2' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_content "Ellis hit!"
  end
  scenario 'Reduce HP by 10' do 
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to_not have_content 'Ellis - 100HP'
    expect(page).to have_content 'Ellis - 90HP'
  end

end
