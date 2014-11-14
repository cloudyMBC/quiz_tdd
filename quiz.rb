
class Quiz
	def next_question
		"Is your second name 'Meow'?"
	end
	def store_answer(answer)
		@last = answer  
	end	
	def last_answer
		@last
	end			
end
