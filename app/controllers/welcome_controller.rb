class WelcomeController < ApplicationController
    before_action :authenticate_admin!
    def index
      @course_count = Course.count
      @cohort_count = Cohort.count
      @student_count = Student.count
      @instructor_count = Instructor.count
    end
  end