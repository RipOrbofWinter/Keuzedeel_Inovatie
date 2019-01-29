class School < ApplicationRecord
		validates :naam,  presence: true, length: { maximum: 100}
end
