# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  
  has_many(:filmography,{ :foreign_key =>"director_id", :class_name =>"Movie"})
  belongs_to(:movie,{:foreign_key =>"movie_id", :class_name =>"Movie"})

end
  # def filmography
  #   key = self.id

  #   the_many = Movie.where({ :director_id => key })

  #   return the_many
  # end
