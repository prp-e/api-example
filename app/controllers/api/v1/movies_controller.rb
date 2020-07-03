class Api::V1::MoviesController < ApplicationController

    def index 
        @movies = Movie.all() 
        render json: @movies 
    end 

    def show 
        @movie = Movie.find(params[:id])
        render json: @movie
    end 

    def create 
        @movie = Movie.create(movie_params)
        if @movie
            render json: {message: "Created successfully"}, status: 200 
        else  
            render error: {error: "Could not create the entity"}, status: 400 
        end 
    end

    def update
        @movie = Movie.find(params[:id])
        if @movie
            @movie.update(movie_params)
            render json: {message: "Created successfully"}, status: 200 
        else  
            render error: {error: "Could not create the entity"}, status: 400 
        end 
    end 

    def destroy 
        @movie = Movie.find(params[:id])
        if @movie
            @movie.destroy
            render json: {message: "Deleted!"}, status: 200 
        else  
            render error: {error: "Could not delete the entity"}, status: 400 
        end 
    end 
    
    private
    def movie_params
        params.require(:movie).permit(:title, :director, :genre, :year, :is_watched, :watchlisted, :imdb_score, :rotten_tomatoes)
    end 
end
