class HasOcupation < ApplicationRecord
  belongs_to :ocupation
  belongs_to :worker

  validates_presence_of :worker

end
