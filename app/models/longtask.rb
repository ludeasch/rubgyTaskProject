class Longtask < Simpletask
    validates :porcentaje, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 100, message: "debe ser entre 10 y 100" }
end
