require('rspec')
require('task')

describe(Task) do
  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("scrub the zebra")
      expect(test_task.description()).to(eq("scrub the zebra"))
    end
  end
  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

end
