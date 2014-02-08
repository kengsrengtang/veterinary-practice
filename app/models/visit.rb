class Visit < ActiveRecord::Base
  belongs_to :doctor

  validates :pet_name, presence: true, length: {maximum: 35}
  validates :pet_type, inclusion: { in: %w(dog cat bird), message: " must be dog, cat or bird." }
  validates :breed, presence: true, length: {maximum: 35}
  validates :age, presence: true
  validates :weight, presence: true
  validates :last_visit, presence: true
end
