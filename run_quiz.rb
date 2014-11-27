require './quiz'

q = Quiz.new
puts q.next_question

answer = gets.chomp

begin
	q.store_answer(answer)
rescue
	puts "The answer must be yes or no! Please try again:"
	answer = gets.chomp
	begin
		q.store_answer(answer)
	rescue 
		puts "The answer must be yes or no! Please try again:"
		answer = gets.chomp
		q.store_answer(answer)
	end
end	
 


