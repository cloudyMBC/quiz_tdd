require './quiz'

q = Quiz.new(["Is your second name 'Meow'?", "Do you like to pet dogs?", "Do you post cat pictures on Twitter?"])

def store(q, answer)
  q.store_answer(answer)
rescue InvalidAnswerError
  puts "The answer must be yes or no! Please try again:"
  answer = gets.chomp
  retry
end

while q.has_more_questions?
  puts q.next_question
  answer = gets.chomp
  store(q, answer)
end
# q.result