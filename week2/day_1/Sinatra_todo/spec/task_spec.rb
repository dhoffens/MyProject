require_relative("../lib/task.rb")


RSpec.describe Task do

  describe "id" do
    
    task = Task.new("Buy the milk")
    task2 = Task.new("Wash the car")
    
    it "checks to see if a task is on the list" do
      
      expect( task.id).to eq(1) 
      expect( task2.id).to eq(2)

    end
  end

  describe "complete?" do

    task = Task.new("Buy the milk")
    task2 = Task.new("Wash the car")

    it "checks to see if a task is complete" do

      expect( task.complete? ).to eq( false )
      expect( task2.complete? ).to eq( false )
    end
  end

  describe "complete!" do

    task = Task.new("Buy the milk")
    task2 = Task.new("Wash the car")

    it "completes a task" do

      expect( task.complete! ).to eq( true )
      expect( task2.complete! ).to eq( true )

    end
  end

  describe "incomplete!" do

    task = Task.new("Buy the milk")
    task2 = Task.new("Wash the car")

    it "uncompletes a task" do

      expect( task.incomplete! ).to eq( false )
      expect( task2.incomplete! ).to eq( false )

    end
  end

  describe "created at" do

    task = Task.new("Buy the milk")
    task2 = Task.new("Wash the car")

    it "tells when a task was created" do

      expect( task.created_at ).to eq( Time.now.to_i )
      expect( task2.created_at ).to eq( Time.now.to_i )

    end
  end

  describe "update_content" do

    task = Task.new("Buy the milk")
    task2 = Task.new("Wash the car")

    it "updates the content of the task" do

      expect( task.update_content!("Buy gas") ).to eq( "Buy gas" )
      expect( task2.update_content!("Do your homework") ).to eq( "Do your homework" )

    end
  end    
end