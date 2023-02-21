class TODO_LIST
  def initialize
  @todo = []
  end

  def add_task(item)
    @todo.push(item)
    list = @todo.join(", ")
    "Tasks: #{list}"
  end

  def completed_task(item)
    if !@todo.include? item
      return "The task doesn't exist"
    else
      @todo.delete(item)
      list = @todo.join(", ")
      "Tasks: #{list}"
    end  
  end
end