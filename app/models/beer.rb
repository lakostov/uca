class Beer < ApplicationRecord
	belongs_to :brewery, optional: true
	belongs_to :style, optional: true
end
