require 'rspec'
require './quiz'

describe Quiz do
	it "gives me a question to ask the user" do
		quiz = Quiz.new
		expect(quiz.next_question).to eq "Is your second name 'Meow'?"
	end

	it "store answer" do
		answer = "yes" + rand(10).to_s
	    quiz = Quiz.new
	    quiz.store_answer(answer)

	    expect(quiz.last_answer).to eq answer	    
    end

    it "only accepts yes or no as answers" do
    	pending
    	quiz = Quiz.new
    	expect(quiz.store_answer("hahahaha")).to raise Exception
    end

end