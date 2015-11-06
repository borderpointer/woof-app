class Subject < ActiveRecord::Base

  ratyrate_rateable "quality"
  has_many :reviews

end
