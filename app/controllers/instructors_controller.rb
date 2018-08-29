class InstructorsController < ApplicationController
def index
    @instructors = Instructor.all
end

def new
    @instructor = Instructor.new
end

def show
    @instructor = Instructor.find(params[:id])
end 

def edit 
    @instructor = Instructor.find(params[:id]) 
end
  
def create
    @instructor = Instructor.new(instructor_params)
    @instructor.save
    redirect_to '/instructors'
end

def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
    redirect_to '/instructors'
end

def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to '/instructors'
end

private

def instructor_params
    params.require(:instructor).permit(:image_url, :firstname, :lastname, :postion, :quirk)
end

end
