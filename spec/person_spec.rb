require_relative '../person'

describe Person do 
  context "When testing the Person class" do 
    ps = Person.new(24, "Simba", "Student")

    it "should show a person object is an instance of person class" do
      expect(ps).to be_instance_of Person 
    end

    it "should get person details when we call the get method" do 
      get_results = {
        'id' => ps.id,
        'name' => ps.name,
        'age' => ps.age
      }
      expect(ps.get).to eq get_results
    end 

    it "should set person details when we call the set method" do 
      name = "Camile"
      age = 20
      ps.set(name, age)
      expect(ps.name).to be name
      expect(ps.age).to eq age
    end 

    it "should say get return true if parent permissiom is true or false otherwise when we call the can_use_services? method" do 
      expect(ps.can_use_services?).to be_truthy
      age = 16
      ps.age = age
      ps.parent_permission = false
      expect(ps.can_use_services?).to be_falsy
    end 

    it "should say get return name when we call correct_name method" do 
      expect(ps.correct_name).to be ps.name
    end
  end
end