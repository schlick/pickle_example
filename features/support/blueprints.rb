require 'machinist/active_record'
require 'sham'
require 'faker'

Company.blueprint do
  name { Faker::Company.name }
end

Person.blueprint do
  name { Faker::Name.name }
  age  { (1..100).to_a.rand }
end