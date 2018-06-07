# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 1번 문제
Question.create(
  q_question: '요일',
  q_answer: '일요일'
)
# 2번 문제
Question.create(
  q_question: '시간',
  q_answer: '0705'
)
# 3번 문제
Question.create(
  q_question: '규칙',
  q_answer: '2'
)