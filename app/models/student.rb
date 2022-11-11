class Student < ApplicationRecord
    belongs_to :instructor

    validates :age, numericality: {greater_than_or_equal_to: 18}
    validates :instructor_id, presence: true
    validate :check_if_instructor_exists

    def check_if_instructor_exists
        unless Instructor.find_by(id: instructor_id)
            errors.add(:instructor_id, "must have valid instructoreee")
        end
    end
end
