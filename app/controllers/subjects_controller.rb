class SubjectsController < ApplicationController

    def index
        @subjects = Subject.all
    end

    def show
        @subject = Subject.find
    end

    def new
        @subject = Subject.new
    end

    def create
        Subject.create
    end

    def edit
        @subject = Subject.find
    end

    def update
        @subject = Subject.find(params[:id])
        @subject.update
    end

    def destroy
        subject = Subject.find
        subject.destroy
    end

end
