class Account < ApplicationRecord
  belongs_to :user
  has_one :company
  has_one :profile
  accepts_nested_attributes_for :company
  # validates :account_number, length: { in: 1..9999999999 } 
  before_create :acc_number_rand

  def full_name 
    "#{first_name} #{last_name}"
  end

  def acc_number_rand
    self.account_number = rand(1e9..1e10).to_i
  end
end
