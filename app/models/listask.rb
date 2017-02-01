class Listask < ApplicationRecord
	has_many :simpletask
	has_many :temporaltask
	has_many :longtask

	extend FriendlyId
  	validates :nombre, presence: true

  	friendly_id :nombre, use: :slugged
  	validates :slug, uniqueness: true
end
