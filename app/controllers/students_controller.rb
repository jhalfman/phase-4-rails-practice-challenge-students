class StudentsController < ApplicationController
    

    def create
        student = Student.create!(name: params[:name], major: params[:major], age: params[:age], instructor_id: params[:instructor_id])
        render json: student
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def update
        student = Student.find(params[:id])
        student.update(name: params[:name], major: params[:major], age: params[:age], instructor_id: params[:instructor_id])
        render json: student
    end

    def index
        render json: Student.all
    end

    def show
        student = Student.find(params[:id])
        render json: student
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
        render json: student
    end

    
end
