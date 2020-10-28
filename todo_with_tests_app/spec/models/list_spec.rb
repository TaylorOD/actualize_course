require "rails_helper"

RSpec.describe List, type: :model do
  describe "#complete_all_tasks!" do
    it "should change all tasks in the list to complete" do
      list = List.create(name: "Chores")
      Task.create(complete: false, list_id: list.id)
      Task.create(complete: false, list_id: list.id)
      list.complete_all_tasks!
      expect(list.tasks[0].complete).to eq(true)
      expect(list.tasks[1].complete).to eq(true)
    end
  end

  describe "#snooze_all_tasks!" do
    it "should make all tasks deadline push one hour" do
      list = List.create(name: "Chores")

      Task.create(deadline: 1.day.ago, list_id: list.id)
      Task.create(deadline: 1.day.ago, list_id: list.id)
      list.snooze_all_tasks!
      expect(list.tasks[0].deadline).to eq(+1.day.from_now)
      expect(list.tasks[1].deadline).to eq(+1.day.from_now)
    end
  end
end
