class Task < ApplicationRecord
  belongs_to :list

  def toggle_complete!
    update(complete: !complete)
  end

  def toggle_favorite!
    update(favorite: !favorite)
  end

  def overdue?
    if complete
      return false
    else
      return Time.now > deadline
    end
  end

  def increment_priority!
    if priority < 10
      update(priority: priority + 1)
    end
  end

  def decrement_priority!
    if priority > 1
      update(priority: priority - 1)
    end
  end

  def snooze_hour!
    update(deadline: deadline + 1.hour)
  end
end
