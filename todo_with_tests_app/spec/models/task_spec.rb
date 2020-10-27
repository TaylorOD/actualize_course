require "rails_helper"

RSpec.describe Task, type: :model do
  describe "#toggle_complete!" do
    it "should switch complete to true if it began as false" do
      task = Task.create(name: "Mow the lawn", description: "Use the lawnmower to mow the lawn", priority: 2, deadline: Time.now, complete: false, duration: 60, favorite: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
    it "should switch complete to false if it began as true" do
      task = Task.create(name: "Mow the lawn", description: "Use the lawnmower to mow the lawn", priority: 2, deadline: Time.now, complete: true, duration: 60, favorite: false)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end
  end
end

RSpec.describe Task, type: :model do
  describe "#toggle_favorite!" do
    it "should switch favorite to true if it began as false" do
      task = Task.create(name: "Mow the lawn", description: "Use the lawnmower to mow the lawn", priority: 2, deadline: Time.now, complete: false, duration: 60, favorite: false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
    end
    it "should switch favorite to false if it began as true" do
      task = Task.create(name: "Mow the lawn", description: "Use the lawnmower to mow the lawn", priority: 2, deadline: Time.now, complete: true, duration: 60, favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end
  end
end

RSpec.describe Task, type: :model do
  describe "#overdue?" do
    it "it should return true is the dealine is past" do
      task = Task.create(deadline: 1.day.ago, complete: false)
      expect(task.overdue?).to eq(true)
    end

    it "it should return false is the dealine has not past" do
      task = Task.create(deadline: 1.day.from_now, complete: false)
      expect(task.overdue?).to eq(false)
    end
  end
end

RSpec.describe Task, type: :model do
  describe "#increment_priority!" do
    it "should increase priority by 1" do
      task = Task.create(priority: 5)
      task.increment_priority!
      expect(task.priority).to eq(6)
    end

    it "should not increase priority past 10" do
      task = Task.create(priority: 10)
      task.increment_priority!
      expect(task.priority).to eq(10)
    end
  end
end
