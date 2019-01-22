class Todo < ApplicationRecord
  belongs_to :event

  def completed?
    !completed_at.blank?
  end
end
