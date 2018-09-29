class Realtor < ApplicationRecord
  belongs_to :company
  belongs_to :user
end
