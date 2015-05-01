class Concert < ActiveRecord::Base
	validates :band_name, :venue, :city, :date, :price, :description, presence: true
end
