class QuestionsController < ApplicationController
  before_action :get_params, only: [:create]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_not_found

  def index
    @questions = test.questions.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = test.questions.new
  end

  def create
    @question = test.questions.new(get_params)

    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    #redirect_to ..... ?
  end

  private def test
    Test.find(params[:test_id])
  end

  private def get_params
    params.require(:question).permit(:title, :body)
  end

  private def rescue_with_not_found
    render html: '<h3>Question Not Found</h3>'.html_safe
  end

end
