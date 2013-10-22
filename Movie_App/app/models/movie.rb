class Movie < ActiveRecord::Base

	has_many :ratings

	validates :title, presence: true
	validates :description, presence: true, length: { minimum: 10 }

	validate :year_released_cannot_be_in_the_future

	def year_released_cannot_be_in_the_future
	    if year_released > Date.today
	      errors.add(:year_released, "can't be in the future")
	    end
	end

end


