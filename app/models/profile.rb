class Profile < ApplicationRecord
  belongs_to :account, dependent: :destroy
  has_many :recommendations
  accepts_nested_attributes_for :account
end
