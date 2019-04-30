class Subject < ApplicationRecord
    has_many: notes, through: :students
end
