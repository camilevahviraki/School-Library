require_relative '../teacher'

describe Teacher do 
  context "When testing the Teacher class" do 
    it "should show a teacher object is an instance of teacher class" do
      tr = Teacher.new("Physics", 50, "Simba", "Teacher")
      expect(tr).to be_instance_of Teacher 
    end

    it "should say 'true' when we call the can_use_service? method" do 
      tr = Teacher.new("Physics", 24, "Simba", "Teacher")
      message = tr.can_use_service? 
      expect(message).to be true
    end 
  end
end