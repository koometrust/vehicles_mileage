class ArchivesController < ApplicationController
  def index
    @entries = Entry.all.group_by(&:day)

    # Calculate current week's mileage
    start_of_week = Date.current.beginning_of_week
    end_of_week = Date.current.end_of_week
    entries_this_week = Entry.where(created_at: start_of_week..end_of_week)
    @current_week_mileage = entries_this_week.sum { |entry| entry.checkin_mileage - entry.checkout_mileage }
  end
end
