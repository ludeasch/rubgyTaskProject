class Temporaltask < Simpletask
  validates :fecha_inicio, :fecha_fin, presence: true
  validate :valid_date_range_required

  def valid_date_range_required
    if (fecha_inicio && fecha_fin) && (fecha_fin < fecha_inicio)
      errors.add(:fecha_fin, "Debe Ser Mayor La Fecha de Valido Hasta")
    end
  end
end
