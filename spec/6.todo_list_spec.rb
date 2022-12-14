require '6.todo_list'

RSpec.describe Tasks do
  it "initialize to do list" do
    tasks_todo = Tasks.new
    expect(tasks_todo.list).to eq []
  end

  xit "adds a task to the to-do list" do
    tasks_todo = Tasks.new
    result = tasks_todo.add("Walk the dog")
    expect(result).to eq ["Walk the dog"]
  end
end