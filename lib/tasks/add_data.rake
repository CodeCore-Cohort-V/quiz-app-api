task add_data: [:environment] do

qt = ['tf', 'multi']

topics = %w(ruby rails javascript angular.js node.js html css)
topics.each {|topic| Topic.create!(name: topic)}

bundle_1 = Bundle.create!(name: 'test bundle 1', difficulty: 'expert', user_id: 1, topic_id: 1)
10.times do {|n| Question.create!(question_type: qt.sample, bundle_id: bundle_1.id, position: n, example: Faker::Lorem.paragraph(13), content: Faker::Lorem.paragraph(16))}





Bundle.create!(name: 'test bundle 2', difficulty: 'beginner', user_id: 1, topic_id: 4)


end