# frozen_string_literal: true

puts '# Creating Authors'
3.times do |a|
  author = Author.where(email: "author_#{a + 1}@example.com").first_or_create!(password: 'password')
  puts author.email
end
