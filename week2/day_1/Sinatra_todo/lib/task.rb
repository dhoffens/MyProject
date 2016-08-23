class Task

    attr_reader :content, :id, :is_complete, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @is_complete = false
        @created_at = Time.now.to_i
    end

    def id
    	@id
    end

    def complete?
    	@is_complete
    end

    def complete!
    	@is_complete = true
    end

    def incomplete!
    	@is_complete = false
    end

    def created_at
    	@created_at
    end

    def update_content!(new_content)
    	@content = new_content
    end
end

# task = Task.new("Buy the milk")
# puts task.id
# # # 1
# task2 = Task.new("Wash the car")
# puts task2.id
# # 2
