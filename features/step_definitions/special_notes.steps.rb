Then(/^there should be a note saying: "(.*?)"$/) do |note|
  expect(find('#notes .value')).to have_content(note)
end
