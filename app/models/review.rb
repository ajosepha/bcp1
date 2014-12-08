class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :pill
	validates :title, presence: true,
                    length: { minimum: 5 }
     # validates :pill_id, presence: true


end
