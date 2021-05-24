class Post < ApplicationRecord
	has_many :comments, dependent: :destroy 
	has_many :likes, dependent: :destroy
	validates :title, presence: true
	validates :content, presence: true

	scope :drafts, -> { where(state: true) }
	scope :published, -> { where(state: false) }
end
