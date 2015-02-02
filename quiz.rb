class Quiz
	attr_reader :count

	def initialize(questions)
		@questions = questions
		@count = 0
	end

	def next_question
		current_question = @questions[@count]
		@count += 1
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

	def has_more_questions?
		@questions.count > @count
	end

	def result

	end
end





class InvalidAnswerError < StandardError

end

