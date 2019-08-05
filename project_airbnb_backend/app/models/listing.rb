class Listing < ApplicationRecord
	belong_to :user
	has_many :reservations 
	belong_to :city
	validates :available_beds,
    	presence: true && > 0
    validates :price,
    	presence: true && > 0
    validates :description,
    	presence: true && > 0,
    	length: { minimun: 140 }
    validates :has_wifi,
    	presence: true
    validates :welcome_message,
    	presence: true

end
