class Event < ApplicationRecord
  validates :name, {presence: true, length: {maximum: 100}}

  validate :end_date_after_start_date
  validate :start_date_after_now


  def end_date_after_start_date
      return if end_time.blank? || start_time.blank?

      if end_time < start_time
        errors.add(:end_time, "must be after the start date")
      end
   end

   def start_date_after_now
       return if end_time.blank? || start_time.blank?

       if start_time < DateTime.now
         errors.add(:start_time, "can't be in the past")
       end
    end

end
