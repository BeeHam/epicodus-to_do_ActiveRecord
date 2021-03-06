require('spec_helper')

describe(List) do

  describe("#tasks") do
    it('tells which tasks are in it') do
      test_list = List.create({:name => "list"})
      test_task1 = Task.create({:description => "task1", :list_id => test_list.id()})
      test_task2 = Task.create({:description => "task2", :list_id => test_list.id()})
      expect(test_list.tasks()).to(eq([test_task1, test_task2]))
    end
  end
  #
  # describe(".all") do
  #   it("starts off with no lists") do
  #     expect(List.all()).to(eq([]))
  #   end
  # end
  #
  # describe("#name") do
  #   it("tells you its name") do
  #     list = List.new({:name => "Epicodus stuff", :id => nil})
  #     expect(list.name()).to(eq("Epicodus stuff"))
  #   end
  # end
  #
  # describe("#id") do
  #   it("sets its ID when you save it") do
  #     list = List.new({:name => "Epicodus stuff", :id => nil})
  #     list.save()
  #     expect(list.id()).to(be_an_instance_of(Fixnum))
  #   end
  # end
  #
  # describe("#save") do
  #   it("lets you save lists to the database") do
  #     list = List.new({:name => "Epicodus stuff", :id => nil})
  #     list.save()
  #     expect(List.all()).to(eq([list]))
  #   end
  # end
  #
  # describe("#==") do
  #   it('is the same list if it has the same name') do
  #     list1 = List.new({:name => "Epicodus stuff", :id => nil})
  #     list2 = List.new({:name => "Epicodus stuff", :id => nil})
  #     expect(list1).to(eq(list2))
  #   end
  # end
  #
  # describe(".find") do
  #   it('returns a list by its ID') do
  #     test_list = List.new({:name => "Epicodus Stuff", :id =>nil})
  #     test_list.save()
  #     test_list2 = List.new({:name => "Home Stuff", :id => nil})
  #     test_list2.save()
  #     expect(List.find(test_list2.id())).to(eq(test_list2))
  #   end
  # end
  #
  # describe('#tasks') do
  #   it('returns an array of tasks for that list') do
  #     list = List.new({:name => "Epicodus stuff", :id => nil})
  #     list.save()
  #     test_task1 = Task.new({:description => "learn SQL", :list_id => list.id(), :due_date => '2015-08-31', :id => nil})
  #     test_task1.save()
  #     test_task2 = Task.new({:description => "Review Ruby", :list_id => list.id(), :due_date => '2015-08-31', :id => nil})
  #     test_task2.save()
  #     expect(list.tasks()).to(eq([test_task1, test_task2]))
  #   end
  # end
end
