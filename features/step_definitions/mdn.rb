Given(/^I am on mdn page$/) do
  visit('https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox')
end

When(/^I click on first checkbox$/) do
  within_frame('frame_Example') do
    check('cbox1')
    #find('#plainIFrame_poster').click
  end

end

Then(/^First checkbox should be checked$/) do
  within_frame('frame_Example') do
    expect(find('#cbox1')).to be_checked
    end
end

When(/^I click on second checkbox$/) do
  within_frame('frame_Example') do
    #check('cbox2')
    find('#cbox2').click
  end
end

Then(/^Second checkbox should be checked$/) do
  within_frame('frame_Example') do
    expect(find('#cbox2')).to be_checked
  end
end

Then(/^First checkbox should be unchecked$/) do
  within_frame('frame_Example') do
    expect(find('#cbox1')).not_to be_checked
  end
end
Then(/^Second checkbox should be unchecked$/) do
  within_frame('frame_Example') do
    expect(find('#cbox2')).not_to be_checked
  end
end

When(/^I uncheck on first checkbox$/) do
  within_frame('frame_Example') do
    find(:css, '#cbox1').set(false)
    end
end

When(/^I uncheck on second checkbox$/) do
  within_frame('frame_Example') do
    uncheck('cbox2')
  end
end
