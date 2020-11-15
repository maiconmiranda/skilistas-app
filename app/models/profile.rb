class Profile < ApplicationRecord
  belongs_to :account
  has_many :recommendations
end
