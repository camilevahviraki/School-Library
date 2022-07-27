require_relative '../student'

describe Student do 
  context "When testing the Student class" do 
    it "should say '¯\(ツ)/¯' when we call the play_hooky method" do 
      st = Student.new("Form1Q", 24, "Simba", "Student", true)
      message = st.play_hooky 
      expect(message).to eq "¯\(ツ)/¯"
    end 
  end
end