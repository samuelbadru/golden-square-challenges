class Todo
    def initialize(task) 
        @task = task
        @status = false
    end
  
    def task
      return @task
    end
  
    def mark_done!
      @status = true
    end
  
    def done?
      @status
    end
end