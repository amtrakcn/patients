class Location < ActiveRecord::Base
  validates :name, presence: true
  has_many :patients
end
