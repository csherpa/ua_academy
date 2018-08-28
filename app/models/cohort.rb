class Cohort < ActiveRecord::Base
    belongs_to :course
    belongs_to :instructor
    has_many :students
end
