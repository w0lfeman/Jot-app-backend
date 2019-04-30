class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find
    end

    def new
        @student = Student.new
    end

    def create
        Student.create
    end

    def edit
        @student = Student.find
    end

    def update
        student = Student.find
        student.update
    end

    def destroy
        student = Student.find
        student.destroy
    end

end
