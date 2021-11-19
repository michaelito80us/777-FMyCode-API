class Api::V1::StoriesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  before_action :set_story, only: [:show, :update, :destroy]

  def index
    @stories = Story.all
    @stories = @stories.sort_by{|story| story.id}

    # render json: @stories #for testing
  end

  def show
    # @story = Story.find(params[:id])
    # render json: @story
    @comments = @story.comments
  end

  def create
    @story = Story.new(strong_params)
    if @story.save
      render :show
    else
      render_error
    end
  end

  def update
    @story.update(strong_params)
     if @story.save
      render :show
    else
      render_error
    end
  end

  def destroy
    @story.destroy
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def strong_params
    params.require(:story).permit(:title, :details)
  end
end