# frozen_string_literal: true

puts '# Creating Authors'
3.times do |a|
  author = Author.where(email: "author_#{a + 1}@example.com").first_or_create!(first_name: "First name #{a + 1}", last_name: "Last name#{a + 1}", password: 'password')
  puts author.email
end
