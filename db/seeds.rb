# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'admin@admin.com', password: '123456')
admin.user_detail.create(name: 'admin')
Question.find_or_create_by(title: 'nesciunt', user_id: 1)
Question.find_or_create_by(title: 'quas', user_id: 1)
Answer.find_or_create_by(text: 'corrupti nulla alias', question_id: 1, user_id: 1)
