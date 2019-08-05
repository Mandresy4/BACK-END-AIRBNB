class Reservation < ApplicationRecord
	belongs_to :user, :listing
	after_create :start_must_be_before_end_date

  def start_must_be_before_end_date
    errors.add(:start_date, "must be before end date") unless
        start_date < end_date
  end
end
