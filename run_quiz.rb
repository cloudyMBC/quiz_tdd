require './quiz'

q = Quiz.new
puts @count
 # def self.q_and_a
   # while @count < 2
    puts q.next_question
    answer = gets.chomp
   # end
 # end
 # puts q.q_and_a

begin
  q.q_and_a
	q.store_answer(answer)
rescue
	puts "The answer must be yes or no! Please try again:"
	answer = gets.chomp
	retry
end	
 


