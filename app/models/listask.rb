class Listask < ApplicationRecord
	has_many :simpletask
	has_many :temporaltask
	has_many :longtask
end
