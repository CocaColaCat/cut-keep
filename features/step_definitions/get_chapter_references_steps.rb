Given(/^the system knows the following:$/) do |string|
  @output_path = File.join(File.dirname(__FILE__), 'chapters.xml')
  File.open(@output_path, 'w') {|f| f.write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" + string)}
end

When(/^a client requests all references of chapter "(.*?)"$/) do |arg1|
  url = "/chapter/" + arg1
  get url
end

Then(/^he should see this references "(.*?)"$/) do |arg1|
  last_response.body.should include(arg1)
end

Then(/^he should see this caption "(.*?)"$/) do |arg1|
  last_response.body.should include(arg1)
  File.delete(@output_path)
end
