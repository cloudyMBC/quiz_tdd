require 'rspec'
require './quiz'

describe Quiz do

  before do
    @quiz = Quiz.new(["q1", "q2", "q3"])
  end

	it "gives me a question about cats as the first question" do
		expect(@quiz.next_question).to eq "q1"
	end

  it "gives me a question about dogs as the second question" do
    @quiz.next_question
    expect(@quiz.next_question).to eq "q2"
  end  

  it "stores answer" do
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
    expect(@quiz.has_more_questions?).to be true
  end

  it "says there are more questions available when we have asked only some of the questions"  do
    2.times do 
      @quiz.next_question 
    end
    expect(@quiz.has_more_questions?).to be true
  end

  it "says there are no more questions available when we have asked all the questions" do
    3.times do 
      @quiz.next_question 
    end
    expect(@quiz.has_more_questions?).to be false
  end


  # it "evaluates the answers" do
  #   # @questions = %w(1 2 3 4 5)
  #   # 5.times do 
  #   #   @quiz.next_question
  #   # end
  #   expect(@quiz.result).to eq "Result"
  # end

end