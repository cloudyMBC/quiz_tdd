require 'rspec'
require './quiz'

describe Quiz do

  before do
    @quiz = Quiz.new
  end

	it "gives me a question about cats as the first question" do
		expect(@quiz.next_question).to eq "Is your second name 'Meow'?"
	end

  it "gives me a question about dogs as the second question" do
    @quiz.next_question
    expect(@quiz.next_question).to eq "Do you like to pet dogs?"
  end  

  it "store answer" do
  	answer = "yes"
      @quiz.store_answer(answer)
      expect(@quiz.last_answer).to eq answer	    
  end

  it "only accepts yes or no as answers" do
  	expect{@quiz.store_answer("huhuhu") }.to raise_error(InvalidAnswerError)
  end

  it "should count starts in zero" do
    expect(@quiz.count).to eq 0  
  end

  it "should count when next question is called" do
    @quiz.next_question
    expect(@quiz.count).to eq 1
  end

  it "should count when next question is called for the second time" do
      2.times do 
        @quiz.next_question 
      end
      expect(@quiz.count).to eq 2
  end

  it "says there are more questions available when we havent asked any questions" do
  end

  it "says there are no more questions available when we have asked all the questions" do
  end


  it "evaluates the answers" do
    
  end
end