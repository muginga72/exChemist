class Element < ApplicationRecord
  validates_uniqueness_of :name, :symbol, :atomic_mass, :atomic_number
  validates :name, presence: true, format: { with: /\A[a-z\-' ]+\z/i }
  validates :symbol, presence: true, format: { with: /\A[a-z\-' ]+\z/i }
  validates :atomic_number, presence: true
  validates :atomic_mass, presence: true
  def name_symbol
    "#{name} - #{symbol}"
  end
end