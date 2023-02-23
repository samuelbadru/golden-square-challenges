class TodoList
  def initialize
    @list_of_tasks = []
  end

  def add(todo) 
    @list_of_tasks << todo
  end

  def incomplete
    result = []

    @list_of_tasks.each do |element|
      if element.done? == false
        result << element.task
      end
    end

    result.join(', ')
  end

  def complete
    result = []
    @list_of_tasks.each do |element|
      if element.done? == true
        result << element.task
      end
    end

    result.join(', ')
  end

  def give_up!
    @list_of_tasks.each { |element| element.mark_done! }
  end
end


# class TodoList
#   def initialize
#   @todo = []
#   end

#   def add_task(item)
#     @todo.push(item)
#     list = @todo.join(", ")
#     "Tasks: #{list}"
#   end

#   def completed_task(item)
#     if !@todo.include? item
#       return "The task doesn't exist"
#     else
#       @todo.delete(item)
#       list = @todo.join(", ")
#       "Tasks: #{list}"
#     end  
#   end
# end