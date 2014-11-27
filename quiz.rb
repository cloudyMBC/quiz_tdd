
class Quiz
	def next_question
		"Is your second name 'Meow'?"
	end
	def store_answer(answer)
		@last = answer
		unless @last == "yes" || @last == "no"
			raise InvalidAnswerError, "Answer is not yes or not. The answer was: #{answer}"
		end
	end	
	def last_answer
		@last
	end			
end

class InvalidAnswerError < StandardError

end

