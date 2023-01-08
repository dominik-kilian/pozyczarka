# frozen_string_literal: true

p 'Generate Items'

10.times do
  Item.find_or_create_by(name: Faker::Book.title, active: true, borrowed: false)
end

p "#{Item.count} items generate"
