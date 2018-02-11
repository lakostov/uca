class Brewery < ApplicationRecord
	has_many :beers
	belongs_to :states, optional: true
end
