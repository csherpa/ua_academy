class CohortsController < ApplicationController
    def index
        @cohorts = Cohort.all
    end

    def new
        @cohort = Cohort.new
    end

    def create 
        @cohort = Cohort.new(cohort_params)
        if @cohort.save
            redirect_to '/cohorts'
        else
            render 'new'
        end
    end

    def show
        @cohort = Cohort.find(params[:id])
        # @students = @cohort.students
    end

    def edit 
        @cohort = Cohort.find(params[:id]) 
    end
      
    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to '/cohorts'
    end
    
    def destroy
        @cohort = Student.find(params[:id])
        @cohort.delete
        redirect_to '/students'
    end

    private

    def cohort_params
        params.require(:cohort).permit(:title, :description, :instructor_id, :course_id)
    end
end
