class InstructorsController < ApplicationController
    

    def create
        instructor= Instructor.create(name: params[:name])
        render json: instructor
    end

    def update
        instructor = Instructor.find(params[:id])
        instructor.update(name: params[:name])
        render json: instructor
    end

    def index
        render json: Instructor.all
    end

    def show
        instructor = Instructor.find(params[:id])
        render json: instructor
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructor.destroy
        render json: instructor
    end

    
end
