def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Ellis'
  fill_in :player_2_name, with: 'Hibo'
  click_button 'Submit'
end
