feature 'Attack and receive confirmation' do
  scenario 'Attacking player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ellis attacked Hibo!"
  end
  scenario 'Reduce HP by 10' do 
    sign_in_and_play
    click_button 'Attack'
    expect(page).to_not have_content 'Hibo - 100HP'
    expect(page).to have_content 'Hibo - 90HP'
  end

end
