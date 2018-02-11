class Beer < ApplicationRecord
	belongs_to :breweries, optional: true
	belongs_to :styles, optional: true
end
