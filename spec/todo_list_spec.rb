require 'todo_list'

describe TodoList do
  todo = TodoList.new

  it 'adds a task to a list and shows the resulting item' do
    list = todo.add_task('Walk the dog')
    expect(list).to eq "Tasks: Walk the dog"
  end

  it 'completes a task and shows no item' do
    expect(todo.completed_task('Walk the dog')).to eq "Tasks: "
  end

  it 'fails if you attempt to complete an item not in the list' do
    expect(todo.completed_task('Walk the cat')).to eq "The task doesn't exist"  
  end

  it "adds multiple tasks and shows the resulting list" do
    todo.add_task('Walk the dog') 
    todo.add_task('Wash the plates') 
    expect(todo.add_task("Do the laundry")).to eq "Tasks: Walk the dog, Wash the plates, Do the laundry"
  end
    
  it "completes a task and shows the resulting list with the item removed" do  
    expect(todo.completed_task('Wash the plates')).to eq "Tasks: Walk the dog, Do the laundry"
  end
end