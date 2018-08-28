class StudentsController < ApplicationController
    class StudentsController < ApplicationController

        def index
            @students = Student.all
        end

        def new
            @student = Student.new
        end
    
        def show
            @student = Student.find(params[:id])
        end
        # def create
        #     Student.create(student_params)
        #     redirect_to new_student_path
        # end
    
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
            @student.update(student_params)
            redirect_to '/students'
        end
    
        private
    
        def student_params
            params.require(:student).permit(:firstname, :lastname, :cohort_id)
        end
    end
    
end
