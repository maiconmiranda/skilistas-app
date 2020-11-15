class Profile < ApplicationRecord
  belongs_to :account
  has_many :recommendations
  accepts_nested_attributes_for :account
end
