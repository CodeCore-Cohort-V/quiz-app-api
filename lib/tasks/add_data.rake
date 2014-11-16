task add_data: [:environment] do

  qt = ['tf', 'multi']

  topics = %w(ruby rails javascript angular.js node.js html css)
  topics.each {|topic| Topic.create!(name: topic)}

  bundle_1 = Bundle.create!(name: 'test bundle 1', difficulty: 'expert', user_id: 1, topic_id: 1)

  10.times do |n| 
    q = Question.create!(question_type: 'multi',
      bundle_id: bundle_1.id, position: n, example: Faker::Lorem.paragraph(13),
      content: Faker::Lorem.paragraph(16))

    Choice.create!(question_id: q.id, correct:  true, content: "The question answer text")
    Choice.create!(question_id: q.id, correct: false, content: "The question answer text")
    Choice.create!(question_id: q.id, correct: false, content: "The question answer text")
    Choice.create!(question_id: q.id, correct: false, content: "The question answer text")
  end



  bundle_2 = Bundle.create!(name: 'test bundle 2', difficulty: 'beginner', user_id: 1, topic_id: 4)

  10.times do |n| 
    q = Question.create!(question_type: 'multi',
      bundle_id: bundle_2.id, position: n, example: Faker::Lorem.paragraph(13),
      content: Faker::Lorem.paragraph(16))}

    Choice.create!(question_id: q.id, correct:  true, content: "The question answer text")
    Choice.create!(question_id: q.id, correct: false, content: "The question answer text")
    Choice.create!(question_id: q.id, correct: false, content: "The question answer text")
    Choice.create!(question_id: q.id, correct: false, content: "The question answer text")
  end

end