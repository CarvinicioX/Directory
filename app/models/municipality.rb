class Municipality < ApplicationRecord
  belongs_to :Department
  has_many :Sectors
end
