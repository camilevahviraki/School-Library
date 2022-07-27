require_relative '../student'

describe Student do 
  context "When testing the Student class" do 
    it "should show a student object is an instance of student class" do
      st = Student.new("Form1Q", 24, "Simba", "Student", true)
      expect(st).to be_instance_of Student 
    end

    it "should say '¯\(ツ)/¯' when we call the play_hooky method" do 
      st = Student.new("Form1Q", 24, "Simba", "Student", true)
      message = st.play_hooky 
      expect(message).to eq "¯\(ツ)/¯"
    end 
  end
end