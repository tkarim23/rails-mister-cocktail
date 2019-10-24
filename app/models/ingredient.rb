class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :doses
  def check
    false unless doses.empty?
  end
end
