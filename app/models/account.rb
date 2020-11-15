class Account < ApplicationRecord
  belongs_to :user
  has_one :company
  has_one :profile
end
