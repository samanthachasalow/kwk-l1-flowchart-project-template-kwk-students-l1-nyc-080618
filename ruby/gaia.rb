class Question
  attr_accessor :prompt, :answer
  def initialize(prompt,answer)
    @prompt = prompt
    @answer = answer
  end
end
  p1 "How often do you use a plastic water bottle?\n(a)daily\n(b)weekly\n(c)monthly\n(d)never"
  p2"What kind of bag do you use at the grocery store?\n(a)plastic\n(b)paper\n(c)reusable"
  p3"What do you usually do with extra food?\n(a)throw it out\n(b)compost it"

questions = [
  Question.new(p1,"a")
  Question.new(p2,"c")
  Question.new(p3,"a")
  ]
  
  def run_test(questions)
    answer = ""
    score = 0
    for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
  end
  end
  puts ("You got" + score.to_s + "/" + questions.length().to_s)
  end
  
  run_test(questions)