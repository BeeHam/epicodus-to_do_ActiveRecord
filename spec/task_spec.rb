# require('rspec')
# require('task')
# require('pg')
require('spec_helper')

describe(Task) do
  # describe("#==") do
  #   it("is the same task if it has the same description") do
  #     task1 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2015-08-31', :id => nil})
  #     task2 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2015-08-31', :id => nil})
  #     expect(task1).to(eq(task2))
  #   end
  # end

  # describe("#description") do
  #   it("lets you read the description out") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2015-08-31', :id => nil})
  #     expect(test_task.description()).to(eq("learn SQL"))
  #   end
  # end

  # describe(".all") do
  #   it("is empty at first") do
  #     expect(Task.all()).to(eq([]))
  #   end
  # end

  # describe("#id") do
  #   it("sets its ID when you save it") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2015-08-31', :id => nil})
  #     test_task.save()
  #     expect(test_task.id()).to(be_an_instance_of(Fixnum))
  #   end
  # end

  # describe("#save") do
  #   it("adds a task to the array of saved tasks") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2015-08-31', :id => nil})
  #     test_task.save()
  #     expect(Task.all()).to(eq([test_task]))
  #   end
  # end

  # describe(".clear") do
  #   it("empties out all of the saved tasks") do
  #     Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2015-08-31', :id => nil}).save()
  #     Task.clear()
  #     expect(Task.all()).to(eq([]))
  #   end
  # end

  # describe("#list_id") do
  #   it("lets you read the list ID out") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2015-08-31', :id => nil})
  #     expect(test_task.list_id()).to(eq(1))
  #   end
  # end
  #
  # describe("#due_date") do
  #   it("lets you read the due date out") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2015-08-31', :id => nil})
  #     expect(test_task.due_date()).to(eq('2015-08-31'))
  #   end
  # end
  #
  # describe('.sort') do
  #   it('lets you sort by due date') do
  #     task1 = Task.new({:description => "learn SQL", :list_id => 2, :due_date => '2015-08-31', :id => nil})
  #     task1.save()
  #     task2 = Task.new({:description => "prepare lunch", :list_id => 1, :due_date => '2015-08-18', :id => nil})
  #     task2.save()
  #     task3 = Task.new({:description => "cook dinner", :list_id => 4, :due_date => '2015-08-10', :id => nil})
  #     task3.save()
  #     task4 = Task.new({:description => "homework", :list_id => 2, :due_date => '2015-08-15', :id => nil})
  #     task4.save()
  #     expect(Task.sort()).to(eq([task3, task4, task2, task1]))
  #   end
  # end

  describe(".not_done") do
    it('returns the not done tasks') do
      not_done_task1 = Task.create({:description => "gotta do it", :done => false})
      not_done_task2 = Task.create({:description => "gotta do it too", :done => false})
      not_done_tasks = [not_done_task1, not_done_task2]
      done_task = Task.create({:description => "done task", :done => true})
      expect(Task.not_done()).to(eq(not_done_tasks))
    end
  end

  describe('#list') do
    it('tells which list it belongs to') do
      test_list = List.create({:name => "list"})
      test_task = Task.create({:description => "task", :list_id => test_list.id})
      expect(test_task.list()).to(eq(test_list))
    end
  end
end
