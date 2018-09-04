class Student < ApplicationRecord
    belongs_to :cohort

    def full_name
        "#{firstname} #{lastname}"
    end
end
