class Listask < ApplicationRecord
	has_many :simpletask
	has_many :longtask
	has_many :temporaltask

	extend FriendlyId
  	validates :nombre, presence: true

  	friendly_id :nombre, use: :slugged
  	validates :slug, uniqueness: true
end
