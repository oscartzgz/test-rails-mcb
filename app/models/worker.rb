class Worker < ApplicationRecord
  has_many :ocupations, through: :has_ocupation
end
