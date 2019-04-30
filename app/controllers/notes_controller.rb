class NotesController < ApplicationController
   
    def index
        @notes = Note.all
        render json: @notes
    end

    def show
        @note = Note.find(params[:id])
        render json: @note
    end

    def new
        @note = Note.new
    end

    def create
        @note = Note.create(note_params)
        render json: @note
    end

    def edit
        @note = Note.find
    end

    def update
        @note = Note.find(params[:id])
        @note.update(note_params)
    end

    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        render json: @notes
    end

    def note_params
        params.require(:note).permit(:subject, :noteValue)
    end

end
