class Longtask < Simpletask
    validates :porcentaje, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: "debe ser entre 0 y 100" }
end
