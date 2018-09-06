class StudentsController < ApplicationController

    before_action :authenticate_admin!

    def index
        @students = Student.all
    end

    def new
        @student = Student.new

    end
     
    def show
        @student = Student.find(params[:id])
    end

    def create 
        @student = Student.new(student_params)
        if @student.save 
            redirect_to '/students' 
        else 
            render 'new'
        end
    end

    def edit 
        @student = Student.find(params[:id]) 
        
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            redirect_to '/students'
        else 
            render 'edit'
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.delete
        redirect_to '/students'
    end

    private
    # def current_student
    #     @current_student = Student.find(params[:id])
    # end

    def student_params
        params.require(:student).permit(:firstname, :lastname, :quirk, :cohort_id, :age)
    end
end
