require 'rspec'
require './quiz'

describe Quiz do
	it "gives me a question about cats as the first question" do
		quiz = Quiz.new
		expect(quiz.next_question).to eq "Is your second name 'Meow'?"
	end

  it "gives me a question about dogs as the second question" do
    quiz = Quiz.new 
    quiz.next_question
    expect(quiz.next_question).to eq "Do you like to pet dogs?"
  end  

  it "store answer" do
  	answer = "yes"
      quiz = Quiz.new
      quiz.store_answer(answer)

      expect(quiz.last_answer).to eq answer	    
  end

  it "only accepts yes or no as answers" do
  	quiz = Quiz.new
  	expect{quiz.store_answer("huhuhu") }.to raise_error(InvalidAnswerError)
  end

  it "evaluates the answers" do
    
  end


end