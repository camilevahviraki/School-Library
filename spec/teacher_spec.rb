require_relative '../teacher'

describe Teacher do 
  context "When testing the Teacher class" do 
    it "should say 'true' when we call the can_use_service? method" do 
      tr = Teacher.new("Physics", 24, "Simba", "Teacher")
      message = tr.can_use_service? 
      expect(message).to eq true
    end 
  end
end