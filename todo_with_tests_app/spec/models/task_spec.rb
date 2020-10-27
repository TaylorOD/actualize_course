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
