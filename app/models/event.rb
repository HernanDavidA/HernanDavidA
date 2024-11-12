class Event < ApplicationRecord
    validates :name, presence: true, length: { maximum: 25 }
    validates :date, presence: true
    validates :description, length: { maximum: 255 }
    # validate :date_must_be_in_the_future, if: -> { date.present? }

    scope :five_days_left, -> { where("date > ?", Date.today + 5) }
    scope :today, -> { where("date = ?", Date.today) }
    private
    def date_must_be_in_the_future
        if date < Date.today
            errors.add(:date, "must be in the future")
        end
    end
end
