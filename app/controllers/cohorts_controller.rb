class CohortsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @cohorts = Cohort.all
    end

    def new
        @cohort = Cohort.new
    end

    def show
        @cohort = Cohort.find(params[:id])
        @students = Cohort.find(params[:id]).students
    end
    
    def create 
        @cohort = Cohort.new(cohort_params)
        if @cohort.save
            redirect_to '/cohorts'
        end
    end

    def edit 
        @cohort = Cohort.find(params[:id]) 
    end
      
    def update
        @cohort = Cohort.find(params[:id])
        if @cohort.update(cohort_params)
            redirect_to '/cohorts'
        else 
            render 'edit'
        end
    end
    
    def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.delete
        redirect_to '/cohorts'
    end

    private

    def cohort_params
        params.require(:cohort).permit(:title, :start_date, :end_date, :instructor_id, :course_id)
    end
end
