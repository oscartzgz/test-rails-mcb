class Ocupation < ApplicationRecord
  has_many :workers, through: :has_ocupation
end
