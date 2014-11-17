json.bundle do 
  if @bundle.approved?
    json.id                 @bundle.id
    json.difficulty         @bundle.difficulty
    json.approved           @bundle.approved
    json.user_id            @bundle.user_id
    json.topic_id           @bundle.topic_id
    json.name               @bundle.name

    json.questions @bundle.questions.each do |question|
      json.id               question.id
      json.question_type    question.question_type
      json.bundle_id        question.bundle_id
      json.position         question.position
      json.example          question.example
      json.content          question.content

      json.choices question.choices.each do |choice|
        json.id               choice.id
        json.question_id      choice.question_id
        json.correct          choice.correct
        json.content          choice.content
      end
    end
  end
end