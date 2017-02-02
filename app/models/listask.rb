class Listask < ApplicationRecord
	has_many :taskmanager

	extend FriendlyId
  	validates :nombre, presence: true

  	friendly_id :nombre, use: :slugged
  	validates :slug, uniqueness: true
end
