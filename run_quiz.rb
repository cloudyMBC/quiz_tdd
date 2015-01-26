require './quiz'

q = Quiz.new

def store(q, answer)
  q.store_answer(answer)
rescue InvalidAnswerError
  puts "The answer must be yes or no! Please try again:"
  answer = gets.chomp
  retry
end

while q.count < 2
  puts q.next_question
  answer = gets.chomp
  store(q, answer)
end