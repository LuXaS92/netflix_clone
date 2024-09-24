class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @q = Movie.ransack(params[:q])
    @movies = @q.result(distinct: true).page(params[:page]).per(20)
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
  end

end