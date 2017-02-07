class Listask < ApplicationRecord
	has_many :simpletask

	extend FriendlyId
  	validates :nombre, presence: true

  	friendly_id :nombre, use: :slugged
  	validates :slug, uniqueness: true
end
