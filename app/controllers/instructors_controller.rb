class InstructorsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @instructors = Instructor.all
    end

    def new
        @instructor = Instructor.new
    end

    def show
        @instructor = Instructor.find(params[:id])
        @allCohort = Cohort.where('instructor_id = ?', params[:id]) 
    end 

    def edit 
        @instructor = Instructor.find(params[:id]) 
    end
    
    def create
        @instructor = Instructor.new(instructor_params)
        if @instructor.save
            redirect_to '/instructors'
        end
    end

    def update
        @instructor = Instructor.find(params[:id])
        if @instructor.update(instructor_params)
            redirect_to '/instructors'
        else 
            render 'edit'
        end
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.delete
        redirect_to '/instructors'
    end

    private

    def instructor_params
        params.require(:instructor).permit(:firstname, :lastname, :postion, :quirk, :age, :salary, :education)
    end

end
