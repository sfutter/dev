class Rating < ActiveRecord::Base
  	belongs_to :movie

	validate :rating_must_be_number_between_1_and_5
		def rating_must_be_number_between_1_and_5
		    if rating < 1 || rating > 5
		      errors.add(:rating, "rating must be between 1 and 5")
		    end
		end

end
