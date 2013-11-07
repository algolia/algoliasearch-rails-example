# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

Contact.delete_all
Contact.clear_index!
Contact.without_auto_index do
  JSON.load(File.new("#{Rails.root}/db/contacts.json")).each do |c|
    Contact.create c
  end
end
Contact.reindex!
