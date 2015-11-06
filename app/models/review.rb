class Review < ActiveRecord::Base

  ratyrate_rater
  belongs_to :user
  belongs_to :subject

end
