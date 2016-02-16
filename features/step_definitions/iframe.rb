Given(/^I am on player page$/) do
  visit('http://www.leanbackplayer.com/example_iframe.html')
end

When(/^I click on video$/) do
  within_frame('plainIFrame') do
    find('#plainIFrame_poster').click
  end
end

Then(/^I should see pause button$/) do
  within_frame('plainIFrame') do
    assert_selector('#plainIFrame_pause_inner0')
    end
end

When(/^I click pause button$/) do
  within_frame('plainIFrame') do
    find('#plainIFrame_pause_inner0').click
  end
end

Then(/^I should see start button$/) do
  within_frame('plainIFrame') do
    assert_selector('#plainIFrame_play_inner0')
  end
end

When(/^I click on full screen$/) do
  within_frame('plainIFrame') do
    find('#plainIFrame_fullscreen_control').double_click
    find('#plainIFrame_fullscreen_control').double_click
    find('#plainIFrame_fullscreen_control').double_click
    find('#plainIFrame_fullscreen_control').double_click
    find('#plainIFrame_fullscreen_control').double_click
    find('#plainIFrame_fullscreen_control').double_click
    find('#plainIFrame_fullscreen_control').double_click
    find('#plainIFrame_fullscreen_control').double_click
    find('#plainIFrame_fullscreen_control').double_click
    sleep(5)
  end
end

Then(/^I exit full screen$/) do
  within_frame('plainIFrame') do
    find('#plainIFrame').send_keys [:escape]
    sleep(5)
  end
end
