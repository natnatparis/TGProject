class Tag < ApplicationRecord
	has_many :join_gotags
  has_many :gossips, through: :join_gotags
end
