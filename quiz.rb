class Quiz
	attr_reader :count
	def initialize
		@questions = ["Is your second name 'Meow'?", "Do you like to pet dogs?", "Do you post cat pictures on Twitter?"]
		@count = 0
	end
	def next_question
		current_question = @questions[@count]
		@count =+ 1
		current_question
	end
	def store_answer(answer)
		@last = answer
		unless @last == "yes" || @last == "no"
			raise InvalidAnswerError, "Answer is not yes or no. The answer was: #{answer}"
		end
	end	
	def last_answer
		@last
	end			
end

class InvalidAnswerError < StandardError

end

