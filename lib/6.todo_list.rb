class Tasks 
  
  def initialize  
    @tasks_todo = []
  end

  def list
    return []
  end

  def add(task)
    @tasks_todo << task
  end
    
end