require 'todo_list'
require 'todo2'

describe 'Todo_integration' do
  context "after adding tasks " do
      it 'returns a list of incomplete tasks' do
        task_list = TodoList.new
        task_1 = Todo.new("go for a walk")
        task_2 = Todo.new("wash my hair")
        task_list.add(task_1)
        task_list.add(task_2)
        expect(task_list.incomplete).to eq "go for a walk, wash my hair"
      end

      it 'returns a list of complete tasks' do
        task_list = TodoList.new
        task_1 = Todo.new("go to the bathroom really quickly")
        task_2 = Todo.new("have a swim with my rubber duck")
        task_list.add(task_1)
        task_list.add(task_2)
        task_1.mark_done!
        task_2.mark_done!
        expect(task_list.complete).to eq "go to the bathroom really quickly, have a swim with my rubber duck"
      end

      it 'returns only completed tasks' do
        task_list = TodoList.new
        task_1 = Todo.new("go to the bathroom really quickly")
        task_2 = Todo.new("have a swim with my rubber duck")
        task_list.add(task_1)
        task_list.add(task_2)
        task_1.mark_done!
        expect(task_list.complete).to eq "go to the bathroom really quickly"
      end

      it 'returns only incomplete tasks' do
        task_list = TodoList.new
        task_1 = Todo.new("go to the bathroom really quickly")
        task_2 = Todo.new("have a swim with my rubber duck")
        task_list.add(task_1)
        task_list.add(task_2)
        task_1.mark_done!
        expect(task_list.incomplete).to eq "have a swim with my rubber duck"
      end

      it 'completes all tasks in the list' do
        task_list = TodoList.new
        task_1 = Todo.new("go to the bathroom really quickly")
        task_2 = Todo.new("have a swim with my rubber duck")
        task_3 = Todo.new("propose to amir")
        task_list.add(task_1)
        task_list.add(task_2)
        task_list.add(task_3)
        task_list.give_up!
        expect(task_list.complete).to eq "go to the bathroom really quickly, have a swim with my rubber duck, propose to amir"
      end
  end
end