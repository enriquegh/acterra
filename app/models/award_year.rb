class AwardYear < ActiveRecord::Base
	belongs_to :organization
	belongs_to :award
	has_many :year_awards
	has_many :awards, through: :year_awards
	validates :name, presence: true 
	validates :name, numericality: true 
	validates :organization, :award, presence: true
	validates_length_of :name, :maximum => 4
	validates_length_of :name, :minimum => 4
	validates_uniqueness_of :organization_id, :scope => :award_id
end
