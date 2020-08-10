# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if User.count.zero?
  admin = User.create(email: 'admin@admin.com', password: '123456')
  admin.build_user_detail(name: 'admin')
end

if Question.count.zero?
  Question.create(title: 'Do id dolore qui aliqua id sunt laboris esse Lorem occaecat ullamco sunt sit.', user_id: 1)
  Question.create(title: 'Excepteur duis consectetur sit anim occaecat labore.', user_id: 1)
end

if Answer.count.zero?
  Answer.create(text: 'Velit minim est nostrud esse duis dolor Lorem officia deserunt enim pariatur.', question_id: 1, user_id: 1)
end

p 'seed done'
