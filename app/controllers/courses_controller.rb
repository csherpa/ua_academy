class CoursesController < ApplicationController
    before_action :authenticate_admin!
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to '/courses'
        end
    end

    def show 
        @course = Course.find(params[:id])
        @cohorts = @course.cohorts
    end  

    def edit 
        @course = Course.find(params[:id]) 
      end
      
    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            redirect_to '/courses'
        else
            render 'edit'
        end
    end

    def destroy
        @course = Course.find(params[:id])
        @course.delete
        redirect_to '/courses'
    end

    private

    def course_params
        params.require(:course).permit(:title)
    end
end
