class Sector < ApplicationRecord
  belongs_to :Municipality
  has_many :sub_sectors
end
