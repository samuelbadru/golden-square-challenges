require "todo2"

describe Todo do 
    it "returns the task" do 
        task_1 = Todo.new("go for a walk")
        expect(task_1.task).to eq "go for a walk"
    end

    it "returns true if task is done" do
        task_1 = Todo.new("go for a walk")
        task_1.mark_done!
        expect(task_1.done?).to eq true
    end

end
        