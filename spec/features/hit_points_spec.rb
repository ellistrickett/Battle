feature 'Hit Points' do
scenario 'view hit points' do
  sign_in_and_play
  expect(page).to have_content 'Hibo - 100HP'
  end
end
