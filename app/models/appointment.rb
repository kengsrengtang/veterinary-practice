class Appointment < ActiveRecord::Base
  belongs_to :doctor

  validates :customer, presence: true
  validates :pet, presence: true
  validates :reason_for_visit, presence: true
  validate  :date_visit_cannot_be_in_the_past, presence: true
    
  def date_visit_cannot_be_in_the_past
    if date_visit.present? && date_visit < Date.today
      errors.add(:date_visit, "can't be in the past")
    end
  end
end
