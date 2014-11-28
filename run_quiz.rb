require './quiz'
valid_answer = false
q = Quiz.new
puts q.next_question

while valid_answer == false
	begin
		answer = gets.chomp
		q.store_answer(answer)
		puts "Answer was valid."
		valid_answer = true	
	rescue => e
		puts e.message
		puts "The answer must be yes or no! Please try again:"
  end
end	
 


