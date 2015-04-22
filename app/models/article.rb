class Article < ActiveRecord::Base

	belongs_to :category

	validates_presence_of :title
	validates_presence_of :content

	#Scopes
	scope :alphabetical, order('title')
	scope :active, where('active = ?', true)

end
