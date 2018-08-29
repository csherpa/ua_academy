class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        @course.save
        redirect_to '/courses'
    end

    def show 
        @course = Course.find(params[:id])
        # @cohorts = @course.cohorts
    end  

    def edit 
        @course = Course.find(params[:id]) 
      end
      
    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to '/courses'
    end

    def destroy
        @course = Student.find(params[:id])
        @course.delete
        redirect_to '/students'
    end

    private

    def course_params
        params.require(:course).permit(:title)
    end
end
