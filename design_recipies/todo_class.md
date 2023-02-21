# Todo Class Design Recipe

## 1. Describe the Problem

User story 1:
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

User story 2:
As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

```ruby
# EXAMPLE

class TODO_LIST
  def initialize # name is a string
    @todo = []
    @completed = []
  end

  def add_task(item) # task is a string
    # adds todo task to list
    # returns updated list
  end

  def completed_task(item) # task is a string
    # Throws an exception if task is not in the list
    # Otherwise, adds it to completed list and removes task from todo list and returns completed list
  end
end

```

## 3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

```ruby
# EXAMPLE

# 1
today = TODO_LIST.new
today.add_task('Walk the dog') # => Tasks: Walk the dog
today.completed_task('Walk the dog') # => Tasks: | Completed tasks: Walk the dog

# 2
today = TODO_LIST.new
today.add_task('Walk the dog') # => Tasks: Walk the dog
today.completed_task('Walk the cat') # => fails with "The task doesn't exist":


# 3
today = TODO_LIST.new
today.add_task('') # => Tasks: 
today.completed_task('Walk the cat') # => fails with "The task doesn't exist"

# 4
today = TODO_LIST.new
today.add_task('Walk the dog') # => Tasks: Walk the dog
today.add_task('Wash the plates') # => Tasks: Walk the dog, Wash the plates
today.add_task('Do the laundry') # => Tasks: Walk the dog, Wash the plates, Do the laundry
today.completed_task('Wash the plates') # => Tasks: Walk the dog, Do the laundry | Completed tasks: Wash the plates
```

Encode each example as a test. You can add to the above list as you go.

## 4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

