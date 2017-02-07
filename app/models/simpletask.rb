class Simpletask < ApplicationRecord
    validates :prioridad, presence: true
	validates :estado, inclusion: { in: %W(1 2 3) }
    validates :descripcion, presence: true, length: { maximum: 255 }
end
