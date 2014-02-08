class Doctor < ActiveRecord::Base
  has_many :appointments, dependent: :destroy
  has_many :visits, dependent: :destroy

  validates :name, length: {maximum: 35}, presence: true
  validates :zip, length: {maximum: 5}
  validates :years_in_practice, :numericality => { :greater_than => 0, :less_than_or_equal_to => 100}
end
