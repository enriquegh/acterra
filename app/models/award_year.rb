class AwardYear < ActiveRecord::Base
	belongs_to :organization
	belongs_to :award
	validates :name, presence: true 
	validates :name, numericality: true 
	validates_length_of :name, :maximum => 4
	validates_length_of :name, :minimum => 4
	validates_uniqueness_of :organization_id, :scope => :award_id
end
