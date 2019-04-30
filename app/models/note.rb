class Note < ApplicationRecord
    has_many :subjects, through: :students
end
