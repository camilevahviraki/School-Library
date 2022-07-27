require_relative '../rental'

describe Rental do 
  context "When testing the Rental class" do 
    it "should show a Rental object is an instance of Rental class" do
      rental = Rental.new(
        "15/5/2022",
       {
         name: "Rick Riordan",
         age: "20",
         parent_permission: true,
         profession: "Student",
      },{
        title: "The Storm Breaker",
        author: "Zetaman",
      })
      expect(rental).to be_instance_of Rental
    end
  end
end