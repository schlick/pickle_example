When /^I activate #{capture_model}$/ do |name|
  person = model(name)
  person.activate
end
