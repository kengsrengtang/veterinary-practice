class ChangeReasonForVisitFromBooleanToTextInAppointment < ActiveRecord::Migration
  def change
    change_column :appointments, :reason_for_visit, :text
  end
end
