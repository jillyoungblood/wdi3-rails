# == Schema Information
#
# Table name: subscribers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subscriber < ActiveRecord::Base
  attr_accessible :tagline, :bio, :preferences, :bodytype, :location, :status, :ethnicity, :gender, :age, :occupation, :interests, :political, :religious, :education, :income
  has_one :user, :as => :userable
end