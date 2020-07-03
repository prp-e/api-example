class Api::V1::BooksController < ApplicationController
    def index
        @books = Book.all 
        render json: @books 
    end 

    def show
        @book = Book.find(params[:id])
        render json: @book 
    end 

    def create
        @book = Book.new(book_params)
        if @book.save 
            render json: @book
        else 
            render error: {error: "Could not save the book"}, status: 400 
        end 
    end 

    def update 
        @book = Book.find(params[:id]) 
        if @book 
            @book.update(book_params)
            render json: @book 
        else  
            render error: {error: "Could not update the book"}, status: 400
        end 
    end 

    def destroy
        @book = Book.find(params[:id])
        if @book 
            @book.destroy 
            render json: {message: "Deleted succesfully."}, status: 200
        else  
            render error: {error: "Could not delete the book"}, status: 400 
        end 
    end 

    private
    def book_params
        params.require(:book).permit(:title, :author, :score)
    end 
end
