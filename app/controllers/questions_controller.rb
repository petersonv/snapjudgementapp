class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show  ]

  # GET /questions or /questions.json
  def index
    @questions = Question.all

    render json: @questions
  end

  # GET /questions/1 or /questions/1.json
  def show
    render json: @question
  end






=begin
  # GET /questions/new
  def new
    @question = Question.new
  end
=end

=begin
  # GET /questions/1/edit
  dont need this action for the user...need this for admin
  def edit
  end
=end

=begin
  # POST /questions or /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end
=end
  # PATCH/PUT /questions/1 or /questions/1.json
=begin
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end
=end

=begin
  # DELETE /questions/1 or /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end
=end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:content)
    end
end
