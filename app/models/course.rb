class Course < ApplicationRecord

  def self.statuses
    ["open", "closed"]
  end

  scope :status, ->(status) { where(status: status) }

  #scope :future, ->(time) { where("created_at < ?", time) }
  scope :future, -> { where("start_time > ?", DateTime.current).order("start_time") }
  scope :past, -> { where("start_time < ?", DateTime.current).order("start_time") }

  #events = Event.where("start > ?", DateTime.now).order("start")


end
