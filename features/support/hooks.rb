After do | scenario |
  if(scenario.failed?)
    #filename = scenario.respond_to?(:scenario_outline) ? scenario.scenario_outline.file : scenario.file
    #name = filename.gsub(%r{[\s,\/\.]+}, '_') + "#{Time.now.strftime('%Y%m%d%T')}.png"
    #path = File.absolute_path(
     #   File.join(File.dirname(__FILE__), '..', '..', 'screenshots', name)
    #)
    #puts "\nSaving screenshot:\n#{path}"
    #save_screenshot(path)
    puts "Saving #{Time.now.strftime('%Y%m%d%T')}.png"
    save_screenshot("screenshots/#{Time.now.strftime('%Y%m%d%T')}.png")
  end
end


Before do |scenario|
  puts '*'*50
  puts scenario.name
end

Before ('@print_something') do | scenario |
  puts "this is test"
end